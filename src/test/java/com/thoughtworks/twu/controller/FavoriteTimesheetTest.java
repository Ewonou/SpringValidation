package com.thoughtworks.twu.controller;

import com.thoughtworks.twu.persistence.Country;
import com.thoughtworks.twu.persistence.FavoriteTimesheet;
import com.thoughtworks.twu.persistence.HibernateConnection;
import com.thoughtworks.twu.service.CountryService;
import com.thoughtworks.twu.service.FavoriteTimesheetService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabase;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseType;

import java.util.List;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

public class FavoriteTimesheetTest {

    @Before
    public void setUp() throws Exception {
        EmbeddedDatabaseBuilder builder = new EmbeddedDatabaseBuilder();
        EmbeddedDatabase db = builder.setType(EmbeddedDatabaseType.H2).setName("test").
                addScript("schema.sql").
                addScript("import.sql").build();
    }

    @Test
    public void shouldReceiveACountryList() throws Exception {
        //Given
        CountryService countryService = new CountryService();
        //When
        List<Country> countries = countryService.getCountries();
        //Then
        assertThat(countries.size(), is(5));
    }

    private void addCountry(String my) {
        Country c = new Country();
        c.setId(my);
        c.setName("F");
        c.setCode("12");

        HibernateConnection.getInstance().getSession().save(c);
        HibernateConnection.getInstance().getSession().flush();
    }

    @Test
    public void shouldRetrieveMyFavoriteTimesheets()
    {
        //Given
        FavoriteTimesheetService timesheetService = new FavoriteTimesheetService();
        //When
        List<FavoriteTimesheet> timesheets = timesheetService.getFavoriteTimesheets();
        //Then
        assertNotNull(timesheets);
    }

    @Test
    public void shouldSaveMyFavoriteTimesheet()
    {
        //Given
        FavoriteTimesheetService favoriteTimesheetService= new FavoriteTimesheetService();
        FavoriteTimesheet favoriteTimesheet= new FavoriteTimesheet("TW");
        //When
        int sizeBeforeInsert = favoriteTimesheetService.getFavoriteTimesheets().size();
        favoriteTimesheetService.save(favoriteTimesheet);
        int sizeAfterInsert = favoriteTimesheetService.getFavoriteTimesheets().size();
        //Then
        assertThat(sizeAfterInsert,is(sizeBeforeInsert+1));

        HibernateConnection.getInstance().getSession().delete(favoriteTimesheet);
        HibernateConnection.getInstance().getSession().flush();
    }

    @After
    public void tearDown() throws Exception {
        HibernateConnection.getInstance().getSession().close();
    }
}

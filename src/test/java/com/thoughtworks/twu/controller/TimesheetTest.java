package com.thoughtworks.twu.controller;

import com.thoughtworks.twu.domain.Country;
import com.thoughtworks.twu.domain.timesheet.forms.TimeSheetForm;
import com.thoughtworks.twu.persistence.FavoriteTimesheet;
import com.thoughtworks.twu.service.CountryService;
import com.thoughtworks.twu.service.FavoriteTimesheetService;
import org.junit.Test;
import org.springframework.validation.BindingResult;
import org.springframework.validation.DataBinder;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;
import static org.mockito.Mockito.mock;

public class TimesheetTest {

    @Test
    public void shouldReceiveACountryList() throws Exception {
        //Given
        CountryService countryService = new CountryService();
        //When
        List<Country> countries = countryService.getCountries();
        //Then
        assertThat(countries.size(), is(239));
    }

    @Test
    public void shouldRetrieveMyFavoriteTimesheets() {
        //Given
        FavoriteTimesheetService timesheetService = new FavoriteTimesheetService();
        //When
        List<FavoriteTimesheet> timesheets = timesheetService.getFavoriteTimesheets();
        //Then
        assertNotNull(timesheets);
    }

    @Test
    public void shouldSaveMyFavoriteTimesheet() {
        //Given
        FavoriteTimesheetService favoriteTimesheetService = new FavoriteTimesheetService();
        FavoriteTimesheet favoriteTimesheet = new FavoriteTimesheet("TW");
        //When
        int sizeBeforeInsert = favoriteTimesheetService.getFavoriteTimesheets().size();
        favoriteTimesheetService.save(favoriteTimesheet);
        int sizeAfterInsert = favoriteTimesheetService.getFavoriteTimesheets().size();
        //Then
        assertThat(sizeAfterInsert, is(sizeBeforeInsert + 1));
    }

    @Test
    public void shouldShowNewFavoriteForm() throws Exception {
        TimesheetController controller = new TimesheetController();
        TimeSheetForm timeSheetForm = new TimeSheetForm();
        BindingResult bindingResult = mock(BindingResult.class);
        ModelAndView modelAndView = controller.newFavorite(timeSheetForm,bindingResult);

        List<Country> countries = (List<Country>) modelAndView.getModel().get("countries");

        assertThat(countries.size(), is(239));
    }
}

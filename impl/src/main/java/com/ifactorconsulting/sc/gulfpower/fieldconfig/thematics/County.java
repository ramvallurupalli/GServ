package com.ifactorconsulting.sc.gulfpower.fieldconfig.thematics;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonView;
import com.ifactorconsulting.sc.domain.AffectedCustomers;
import com.ifactorconsulting.sc.jsonviews.Views;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
        "n_out",
        "cust_s",
        "cust_a",
        "etr_latest",
        "centroid",
        "comm"
})
public abstract class County {

    @JsonView(Views.Include.class)
    @JsonProperty("n_out")
    private int numOutages;

    @JsonView(Views.Include.class)
    @JsonProperty("cust_s")
    private int customersServed;

    @JsonView(Views.Include.class)
    @JsonProperty("cust_a")
    private AffectedCustomers affectedCustomers;

    @JsonView(Views.Include.class)
    @JsonProperty("centroid")
    private String centroid;

    @JsonView(Views.Include.class)
    private String comment;

    @JsonView(Views.Include.class)
    @JsonProperty("etr")
    abstract String getEffectiveEstimatedRestorationTime();

}

% This script is to only load the asl data and organize the data in different % variables names.% NOTE: this is loading the "clean Data"% @ Alexandre Franco - alexandre.franco@nki.rfmh.org% Oct 25rd 2018function [t, oxy, deoxy] = load_asl_data(filename, subj)load(filename);t = data{subj}(:,1);oxy = data{subj}(:,4:3:end);deoxy = data{subj}(:,5:3:end);
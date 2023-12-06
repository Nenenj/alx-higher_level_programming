#!/usr/bin/python3
def multiply_by_2(a_dictionary):
    new_dictn = a_dictionary.copy()
    for key in new_dictn.keys():
        new_dictn[key] = new_dictn[key] * 2
    return new_dictn

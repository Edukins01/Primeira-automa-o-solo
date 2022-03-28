*** Settings ***
Documentation        Este aqui é o nosso gerenciador e dependência

################################################
#                  Libraries                   #
################################################
Library        SeleniumLibrary
Library        DebugLibrary
Library        FakerLibrary

################################################
#                   Keywords                   #
################################################
Resource    ../Auto/Keywords/kws_category.robot
Resource    ../Auto/Keywords/kws_search.robot
Resource    ../Auto/Keywords/kws_register.robot
################################################
#                     Pages                    #
################################################
Resource    ../Auto/Pages/home_page.robot
Resource    ../Auto/Pages/register_page.robot

################################################
#                     Hooks                    #
################################################
Resource    hooks.robot
var vCategoryArticleTable   =   null;
var vArticleTable           =   null;
var vProjectTable           =   null;
var vAlbumTable           =   null;
var vCategoryVideoTable           =   null;
var vPhotoTable           =   null;
var vVideoTable           =   null;
var vSupporterTable           =   null;
var vOrganizationTable           =   null;
var vProvinceTable           =   null;
var vDistrictTable           =   null;

var vProjectArticleTable           =   null;
var vMediaTable           =   null;
var vPageTable           =   null;
var vArticleModuleItemTable           =   null;
var vProductModuleItemTable           =   null;
var vPageModuleItemTable           =   null;
var vMenuTypeTable          =   null;
var vCategoryBannerTable          =   null;
var vMenuTable              =   null;
var vCategoryProductTable   =   null;
var vProductTable           =   null;
var vModuleMenuTable        =   null;
var vModuleArticleTable     =   null;
var vModuleItemTable        =   null;
var vGroupMemberTable       =   null;
var vUserTable              =   null;
var vPrivilegeTable         =   null;
var vCustomerTable          =   null;
var vInvoiceTable           =   null;
var vPaymentMethodTable     =   null;
var vBannerTable            =   null;
var vSettingSystemTable     =   null;
var vItemTable     =   null;
var vArticleComponentTable = null;
var vProductComponentTable = null;
var vPageComponentTable = null;
var basicTable = function () {
    var initCategoryArticleTable = function () {
        vCategoryArticleTable = $('#tbl-category-article').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },
                { data: "fullname"      },
                { data: "alias"         },
                { data: "parent_fullname"     },
                { data: "image"         },
                { data: "sort_order"    },
                { data: "status"        },                            
                { data: "edited"    },         
                { data: "deleted"    },                
            ]
        });        
    };
    var initItemTable = function () {
        vItemTable = $('#tbl-item').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [   
                { data: "checked"            },                             
                { data: "fullname"      },    
                { data: "image"      },               
                { data: "sort_order"    },               
                { data: "deleted"    },                     
            ]
        });        
    };
    var initPageComponentTable = function () {
        vPageComponentTable = $('#tbl-page-component').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                                    
                { data: "fullname"      },    
                { data: "image"      },               
                { data: "sort_order"    },                               
            ]
        });        
    };
    var initProductComponentTable = function () {
        vProductComponentTable = $('#tbl-product-component').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                                        
                { data: "fullname"      },    
                 { data: "category_name" },
                { data: "image"      },               
                { data: "sort_order"    },                               
            ]
        });        
    };
    var initArticleTable = function () {
        vArticleTable = $('#tbl-article').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },                
                { data: "fullname"      },
                { data: "category_name"      },
                { data: "image"         },
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"    },         
                { data: "deleted"    },                
            ]
        });        
    };
    var initPhotoTable = function () {
        vPhotoTable = $('#tbl-photo').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },
                { data: "image"         },                               
                { data: "album_name"      },                
                { data: "sort_order"    },
                { data: "status"        },                                
                
                { data: "deleted"    },                
            ]
        });        
    };
    var initVideoTable = function () {
        vVideoTable = $('#tbl-video').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },
                { data: "fullname"         },      
                { data: "image"         },                               
                { data: "category_name"      },                
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"    },
                { data: "deleted"    },                
            ]
        });        
    };
    var initProjectArticleTable = function () {
        vProjectArticleTable = $('#tbl-project-article').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },                
                { data: "fullname"      },
                { data: "project_name"      },
                { data: "image"         },
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"    },         
                { data: "deleted"    },                
            ]
        });        
    };
    var initProjectTable = function () {
        vProjectTable = $('#tbl-project').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },                
                { data: "fullname"      },               
                { data: "image"         },
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"    },         
                { data: "deleted"    },                
            ]
        });        
    };
    var initAlbumTable = function () {
        vAlbumTable = $('#tbl-album').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },                
                { data: "fullname"      },               
                { data: "image"         },
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"    },         
                { data: "deleted"    },                
            ]
        });        
    };
    var initCategoryVideoTable = function () {
        vCategoryVideoTable = $('#tbl-category-video').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },                
                { data: "fullname"      },               
                { data: "image"         },
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"    },         
                { data: "deleted"    },                
            ]
        });        
    };
    var initSupporterTable = function () {
        vSupporterTable = $('#tbl-supporter').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },                
                { data: "fullname"      },               
                { data: "number_money"         },
                { data: "payment_method_name"         },
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"    },         
                { data: "deleted"    },                
            ]
        });        
    };
    var initOrganizationTable = function () {
        vOrganizationTable = $('#tbl-organization').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },                
                { data: "fullname"      },    
                { data: "image"      },                               
                { data: "phone"         },
                { data: "email"         },
                { data: "website"         },
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"    },         
                { data: "deleted"    },                
            ]
        });        
    };
    var initProvinceTable = function () {
        vProvinceTable = $('#tbl-province').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },                
                { data: "fullname"      },                    
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"    },         
                { data: "deleted"    },                
            ]
        });        
    };
    var initDistrictTable = function () {
        vDistrictTable = $('#tbl-district').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },                
                { data: "fullname"      },     
                { data: 'province_name'}  ,             
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"    },         
                { data: "deleted"    },                
            ]
        });        
    };    
    var initMediaTable = function () {
        vMediaTable = $('#tbl-media').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },  
                { data: "featured_file"      },                              
                { data: "fullname"      },                
                { data: "deleted"    },                
            ]
        });        
    };
    var initArticleComponentTable = function () {
        vArticleComponentTable = $('#tbl-article-component').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [            
                                    
                { data: "fullname"      },    
                { data: "category_name" },
                { data: "image"      },               
                { data: "sort_order"    },                               
            ]
        });        
    };
    var initPageTable = function () {
        vPageTable = $('#tbl-page').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },                
                { data: "fullname"      },
                { data: "alias"      },
                { data: "theme_location"      },
                { data: "image"         },
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"    },         
                { data: "deleted"    },                
            ]
        });        
    };
    var initBannerTable = function () {
        vBannerTable = $('#tbl-banner').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"           },                                
                { data: "image"             },
                { data: "category_name"     },
                { data: "sort_order"        },
                { data: "status"            },                                
                { data: "edited"            },         
                { data: "deleted"           },                
            ]
        });        
    };
    var initArticleModuleItemTable = function () {
        vArticleModuleItemTable = $('#tbl-article-module-item').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },                
                { data: "fullname"      },
                { data: "category_name"      },
                { data: "image"         },                                            
            ]
        });        
    };
    var initProductModuleItemTable = function () {
        vProductModuleItemTable = $('#tbl-product-module-item').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },               
                { data: "fullname"      },
                 { data: "category_name" },                
                { data: "image"         },                                            
            ]
        });        
    };
    var initPageModuleItemTable = function () {
        vPageModuleItemTable = $('#tbl-page-module-item').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },                
                { data: "fullname"      },
                { data: "alias"      },
                { data: "image"         },                                            
            ]
        });        
    };
    var initMenuTypeTable = function () {
        vMenuTypeTable = $('#tbl-menu-type').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"               },
                { data: "fullname"              },   
                { data: "theme_location"        },               
                { data: "sort_order"            },                                                
                { data: "entranced"             },
                { data: "status"                }, 
                { data: "edited"                },         
                { data: "deleted"               },                
            ]
        });        
    };
    var initCategoryBannerTable = function () {
        vCategoryBannerTable = $('#tbl-category-banner').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"               },
                { data: "fullname"              },   
                { data: "theme_location"        },               
                { data: "sort_order"            },                                                
                { data: "entranced"             },
                { data: "status"                }, 
                { data: "edited"                },         
                { data: "deleted"               },                
            ]
        });        
    };
    var initMenuTable = function () {
        vMenuTable = $('#tbl-menu').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"       },
                { data: "fullname"      },      
                { data: "level"         },         
                { data: "sort_order"    },   
                { data: "status"        },                                        
                { data: "edited"        },         
                { data: "deleted"       },                
            ]
        });        
    };
    var initCategoryProductTable = function () {
        vCategoryProductTable = $('#tbl-category-product').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },
                { data: "fullname"      },
                { data: "alias"         },
                { data: "parent_fullname"     },
                { data: "image"         },
                { data: "sort_order"    },
                { data: "status"        },                            
                { data: "edited"    },         
                { data: "deleted"    },                
            ]
        });        
    };
    var initProductTable = function () {
        vProductTable = $('#tbl-product').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"       },                
                { data: "fullname"      },                
                { data: "category_name"         },                            
                { data: "image"         },
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"        },         
                { data: "deleted"       },                
            ]            
        });        
    };
    var initModuleMenuTable = function () {
        vModuleMenuTable = $('#tbl-module-menu').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"       },
                { data: "fullname"      },
                { data: "position"      },                
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"        },         
                { data: "deleted"       },                
            ]
        });        
    };
    var initModuleArticleTable = function () {
        vModuleArticleTable = $('#tbl-module-article').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"       },
                { data: "fullname"      },
                { data: "position"      },                
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"        },         
                { data: "deleted"       },                
            ]
        });        
    };
    var initModuleItemTable = function () {
        vModuleItemTable = $('#tbl-module-item').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"       },
                { data: "fullname"      },
                { data: "position"      },                
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"        },         
                { data: "deleted"       },                
            ]
        });        
    };
    var initPaymentMethodTable = function () {
        vPaymentMethodTable = $('#tbl-payment-method').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"       },
                { data: "fullname"      },
                { data: "alias"         },                
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"        },         
                { data: "deleted"       },                
            ]
        });        
    };
    var initSettingSystemTable = function () {
        vSettingSystemTable = $('#tbl-setting-system').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"       },
                { data: "fullname"      },
                { data: "alias"         },                
                { data: "sort_order"    },
                { data: "status"        },                                
                { data: "edited"        },         
                { data: "deleted"       },                
            ]
        });        
    };
    var initGroupMemberTable = function () {
        vGroupMemberTable = $('#tbl-group-member').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"            },
                { data: "fullname"      },               
                { data: "sort_order"    },                      
                { data: "edited"    },         
                { data: "deleted"    },                
            ]
        });        
    };
    var initUserTable = function () {
        vUserTable = $('#tbl-user').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"       },
                { data: "username"      },
                { data: "fullname"      },   
                { data: "group_member_name" },            
                { data: "sort_order"    },  
                { data: "status"        },                      
                { data: "edited"        },         
                { data: "deleted"       },                
            ]
        });        
    };
    var initUserTable = function () {
        vUserTable = $('#tbl-user').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"       },
                { data: "username"      },
                { data: "fullname"      },   
                { data: "group_member_name" },            
                { data: "sort_order"    },  
                { data: "status"        },                      
                { data: "edited"        },         
                { data: "deleted"       },                
            ]
        });        
    };
    var initPrivilegeTable = function () {
        vPrivilegeTable = $('#tbl-privilege').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"       },               
                { data: "fullname"      },   
                { data: "controller"    },     
                { data: "action"        },            
                { data: "sort_order"    },                  
                { data: "edited"        },         
                { data: "deleted"       },                
            ]
        });        
    };
    var initCustomerTable = function () {
        vCustomerTable = $('#tbl-customer').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"       },               
                { data: "username"      },   
                { data: "email"         },     
                { data: "fullname"      },            
                { data: "mobilephone"   },            
                { data: "sort_order"    },
                { data: "status"        },                  
                { data: "edited"        },         
                { data: "deleted"       },                
            ]
        });        
    };
    var initInvoiceTable = function () {
        vInvoiceTable = $('#tbl-invoice').DataTable({
            aLengthMenu: [
                [10, -1],
                [10, "All"]
            ],
            iDisplayLength: -1,
            columns: [                
                { data: "checked"       },               
                { data: "code"      },                
                { data: "email"         },     
                { data: "fullname"      },            
                { data: "phone"   },                            
                { data: "status"        },                  
                { data: "edited"        },         
                { data: "deleted"       },                
            ]
        });        
    };
    return {
        init: function () {
            if (!jQuery().dataTable){
                return;        
            }
            initCategoryArticleTable();  
            initCategoryProductTable();  
            initArticleTable();
            initProductTable();
            initMenuTypeTable();
            initMenuTable();
            initModuleMenuTable();
            initModuleArticleTable();
            initGroupMemberTable();
            initUserTable();
            initPrivilegeTable();
            initCustomerTable();
            initInvoiceTable();
            initModuleItemTable();
            initPaymentMethodTable();
            initBannerTable();
            initSettingSystemTable();
            initArticleModuleItemTable();
            initProductModuleItemTable();
            initItemTable();
            initArticleComponentTable();
            initProductComponentTable();
            initPageComponentTable();            
            initCategoryBannerTable();
            initPageTable();
            initPageModuleItemTable();
            initMediaTable();
            initProjectTable();
            initProjectArticleTable();
            initSupporterTable();
            initOrganizationTable();
            initAlbumTable();
            initPhotoTable();
            initCategoryVideoTable();
            initVideoTable();
            initProvinceTable();
            initDistrictTable();  
        }
    };
}();

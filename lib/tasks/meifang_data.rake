namespace :db do
  desc "Fill database with maifang data"
  task populate: :environment do
    make_categories
    make_areas
    make_sections
    make_developers
    make_construction_categories
    make_property_types
    make_statuses
    make_new_homes
    make_information
  end

  def make_categories
    # 信息分类
    Category.create!(name: "房产咨询")
  end

  def make_areas
    # 区域
    Area.create!(name: "芗城区")
  end

  def make_sections
    #
    Section.create!(name: "城中")
  end

  def make_developers
    Developers.create!(name: "万达")
  end

  def make_construction_categories
    ConstructionCategory.create!(name: "超高层")
  end

  def make_property_types
    PropertyType.create!(name: "城市综合体")
    PropertyType.create!(name: "小楼")
  end

  def make_statuses
    Status.create!(name: "优惠")
  end

  def make_new_homes
    NewHome.create!(name: "万达房产",
                    price: 8000,
                    tel: "0596-8888888",
                    project_address: "碧湖万达",
                    sales_address: "售楼地址",
                    area_id: Area.first.id,
                    section_id: Section.first.id,
                    developers_id: Developers.first.id,
                    agents: "代理商",
                    covers: "1000亩",
                    gfa: "800亩",
                    pool_area: "20平方",
                    parking: "很多",
                    number_users: "10000",
                    construction_category_id: ConstructionCategory.first.id,
                    building_towers: "18",
                    floors_case: "30",
                    main_units: "小户型",
                    house_area: "80平方米",
                    greening_rate: "30%",
                    volume_rate: "82%",
                    fit: "简修",
                    property: "70年",
                    school: "巷口小学",
                    hospital: "中医院",
                    bank: "建行",
                    shopping: "沃尔玛",
                    neighborhoods: "无",
                    landscapes: "无",
                    bus: "27",
                    car: "自驾",
                    property_type_id: PropertyType.first.id,
                    content: "内容内容内容内容内容",
                    status_id: Status.first.id,
                    new_home_thumb: "")
  end

  def make_information
    Information.create!(category_id: Category.first.id,
                        title: "漳州楼市",
                        information_thumb: "",
                        source: "来源",
                        keywords: "关键词,关键词",
                        description: "描述描述描述描述",
                        content: "内容",
                        new_home_id: NewHome.first.id)
  end
end

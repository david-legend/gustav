part of values;

class Data {
  static List<ExperienceData> educationData = [
    ExperienceData(
      title: StringConst.EDUCATION_1,
      titleUrl: StringConst.EDUCATION_1_URL,
      body: [
        StringConst.EDUCATION_1_DESC,
      ],
      location: StringConst.LOCATION_1,
      duration: StringConst.DURATION_1,
    ),
    ExperienceData(
      title: StringConst.EDUCATION_2,
      titleUrl: StringConst.EDUCATION_2_URL,
      body: [
        StringConst.EDUCATION_2_DESC,
      ],
      location: StringConst.LOCATION_2,
      duration: StringConst.DURATION_2,
    ),
  ];
  static List<ExperienceData> experienceData = [
    ExperienceData(
      title: StringConst.WORK_1,
      subtitle: StringConst.WORK_1_POSITION,
      titleUrl: StringConst.WORK_1_URL,
      body: [
        StringConst.WORK_1_ROLE_1,
        StringConst.WORK_1_ROLE_2,
        StringConst.WORK_1_ROLE_3,
      ],
      location: StringConst.WORK_1_LOCATION,
      duration: StringConst.WORK_1_DURATION,
    ),
    ExperienceData(
      title: StringConst.WORK_2,
      subtitle: StringConst.WORK_2_POSITION,
      titleUrl: StringConst.WORK_2_URL,
      body: [
        StringConst.WORK_2_ROLE_1,
        StringConst.WORK_2_ROLE_2,
        StringConst.WORK_2_ROLE_3,
      ],
      location: StringConst.WORK_2_LOCATION,
      duration: StringConst.WORK_2_DURATION,
    ),
    ExperienceData(
      title: StringConst.WORK_3,
      subtitle: StringConst.WORK_3_POSITION,
      titleUrl: StringConst.WORK_3_URL,
      body: [
        StringConst.WORK_3_ROLE_1,
        StringConst.WORK_3_ROLE_2,
        StringConst.WORK_3_ROLE_3,
        StringConst.WORK_3_ROLE_4,
      ],
      location: StringConst.WORK_3_LOCATION,
      duration: StringConst.WORK_3_DURATION,
    ),
    ExperienceData(
      title: StringConst.WORK_4,
      subtitle: StringConst.WORK_4_POSITION,
      titleUrl: StringConst.WORK_4_URL,
      body: [
        StringConst.WORK_4_ROLE_1,
        StringConst.WORK_4_ROLE_2,
        StringConst.WORK_4_ROLE_3,
      ],
      location: StringConst.WORK_4_LOCATION,
      duration: StringConst.WORK_4_DURATION,
    ),
  ];

  static List<SkillData> skillData = [
    SkillData(skillLevel: 90, skillName: StringConst.PV_SYST),
    SkillData(skillLevel: 90, skillName: StringConst.RET_SCREEN),
    SkillData(skillLevel: 75, skillName: StringConst.AUTOCAD),
    SkillData(skillLevel: 80, skillName: StringConst.PYTHON),
    SkillData(skillLevel: 85, skillName: StringConst.EXCEL),
    SkillData(skillLevel: 75, skillName: StringConst.C_PLUS_PLUS),
    SkillData(skillLevel: 90, skillName: StringConst.SOLAR_PANEL_INSTALLATION),
    SkillData(skillLevel: 95, skillName: StringConst.AGRIC_ENG),
  ];
  static List<CertificationData> certificationData = [
    CertificationData(
      title: StringConst.DATA_SCIENCE_CERT,
      url: StringConst.DATA_SCIENCE_CERT_URL,
      image: ImagePath.DATA_SCIENCE_STORAGE_CERT,
      imageSize: 0.30,
      awardedBy: StringConst.COURSERA,
    ),
    CertificationData(
      title: StringConst.ENERGY_STORAGE,
      url: StringConst.UNIVERSITY_OF_ZIELONA_URL,
      image: ImagePath.ENERGY_STORAGE_CERT,
      imageSize: 0.30,
      awardedBy: StringConst.UNIVERSITY_OF_ZIELONA,
    ),
    CertificationData(
      title: StringConst.SOLAR_INSTALLATION,
      url: StringConst.INT_EDUCATION_URL,
      image: ImagePath.SOLAR_INSTALLATION,
      imageSize: 0.30,
      awardedBy: StringConst.INT_EDUCATION,
    ),
    CertificationData(
      title: StringConst.SOLAR_ENERGY_DESIGN,
      url: StringConst.DATA_SCIENCE_CERT_URL,
      image: ImagePath.SOLAR_SYSTEM_DESIGN,
      imageSize: 0.30,
      awardedBy: StringConst.COURSERA,
    )
  ];

  static List<PortfolioData> portfolioData = [
    PortfolioData(
      imageUrl: ImagePath.SOLAR_PROJECT_1,
      url: StringConst.GREECE_PROJECT_URL,
      client: StringConst.GREECE_PROJECT_TAG,
      title: StringConst.GREECE_PROJECT,
    ),
    PortfolioData(
      imageUrl: ImagePath.SOLAR_PROJECT_2,
      url: StringConst.NETHERLANDS_PROJECT_URL,
      client: StringConst.NETHERLANDS_PROJECT_TAG,
      title: StringConst.NETHERLANDS_PROJECT,
    ),
    PortfolioData(
      imageUrl: ImagePath.SOLAR_PROJECT_3,
      url: StringConst.BANGLADESH_PROJECT_URL,
      client: StringConst.BANGLADESH_PROJECT_TAG,
      title: StringConst.BANGLADESH_PROJECT,
    ),
    PortfolioData(
      imageUrl: ImagePath.SOLAR_PROJECT_4,
      url: StringConst.LIMPOPO_GRID_PROJECT_URL,
      client: StringConst.LIMPOPO_GRID_PROJECT_TAG,
      title: StringConst.LIMPOPO_GRID_PROJECT,
    ),
  ];
}

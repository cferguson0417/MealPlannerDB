CREATE TABLE [dbo].[Meals](
	[MealID] [int] IDENTITY(1,1) NOT NULL,
	[MealName] [varchar](50) NOT NULL,
	[Url] [varchar](200) NULL,
	[Calories] [int] NOT NULL,
	[Fat] [int] NOT NULL,
	[Carbs] [int] NOT NULL,
	[Protein] [int] NOT NULL,
	[MealType] [int] NOT NULL,
	[Leftovers] [bit] NOT NULL,
	[Servings] [int] NULL,
 CONSTRAINT [PK_Meals] PRIMARY KEY CLUSTERED 
(
	[MealID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
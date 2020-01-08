CREATE TABLE [dbo].[Meal_Ingredient_Reference](
	[ParentMeal] [int] NOT NULL,
	[ParentIngredient] [int] NOT NULL,
	[ReferenceID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Meal_Ingredient_Reference] PRIMARY KEY CLUSTERED 
(
	[ReferenceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Meal_Ingredient_Reference]  WITH CHECK ADD  CONSTRAINT [FK_Meal_Ingredients_Key] FOREIGN KEY([ParentIngredient])
REFERENCES [dbo].[MealIngredients] ([IngredientID])
GO

ALTER TABLE [dbo].[Meal_Ingredient_Reference] CHECK CONSTRAINT [FK_Meal_Ingredients_Key]
GO
ALTER TABLE [dbo].[Meal_Ingredient_Reference]  WITH CHECK ADD  CONSTRAINT [FK_Meals_Key] FOREIGN KEY([ParentMeal])
REFERENCES [dbo].[Meals] ([MealID])
GO

ALTER TABLE [dbo].[Meal_Ingredient_Reference] CHECK CONSTRAINT [FK_Meals_Key]
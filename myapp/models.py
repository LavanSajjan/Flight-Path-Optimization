from django.db import models

class WeatherReport(models.Model):
    report_id = models.IntegerField()
    temperature = models.FloatField()
    wind_speed = models.FloatField()

    def __str__(self):
        return f"Report ID: {self.report_id}, Temperature: {self.temperature}, Wind Speed: {self.wind_speed}"

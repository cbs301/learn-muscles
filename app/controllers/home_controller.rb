class HomeController < ApplicationController
  def index
  end

  def show
    @region = params[:region]
    @muscles = case @region
               when "shoulder"
                 [ "Supraspinatus", "Infraspinatus", "Teres Major", "Teres Minor", "Subscapularis" ]
               when "upper_arm"
                 [ "Biceps Brachii", "Brachialis", "Brachioradialis", "Triceps Brachii" ]
               when "forearm_hand"
                 [ "Flexor Carpi Radialis", "Flexor Carpi Ulnaris", "Extensor Carpi Radialis", "Extensor Carpi Ulnaris" ]
               when "hip"
                 [ "Gluteus Maximus", "Gluteus Medius", "Gluteus Minimus", "Piriformis" ]
               when "upper_leg"
                 [ "Quadriceps Femoris", "Hamstrings", "Adductors", "Sartorius" ]
               when "lower_leg_foot"
                 [ "Gastrocnemius", "Soleus", "Tibialis Anterior", "Peroneus Longus" ]
               when "neck"
                 [ "Sternocleidomastoid", "Scalenes", "Trapezius", "Splenius Capitis" ]
               when "back"
                 [ "Latissimus Dorsi", "Trapezius", "Erector Spinae", "Rhomboids" ]
               else
                 []
               end
  end
end

Avatar.destroy_all 
User.destroy_all 

pictures = ['https://i.pinimg.com/originals/fa/c2/ab/fac2abb69ff8503d184be8d5417ea650.png', 'https://lh3.googleusercontent.com/proxy/D49CjyACJohNtfaQcB-HHC72X5bK6gmK_h0LK5ju-t-3tvNEyUcPNV0T_ogZNeicuElFpCNNUreGp8SdrXb6Jx6CHMeRFT2qQlQHclWInY4gsJF95QkCrQ', "https://i.ya-webdesign.com/images/character-transparent-pixel-16.png", 'https://lh3.googleusercontent.com/proxy/A5kMbnS1MuD5b0vHVruwgOX1Y96fHNFLdNYOC8-osJhhUCme5KgDkm0wlYRjdmbhRQw8-VI6C6HbTjfG2hOJMuTEqllQp4ADIChGj8hSeAtgrDW9KWR7Sw','https://lh3.googleusercontent.com/proxy/xYWIFC5OxbDW6kBVGyFVmVLVczAbeXm_zrFFoDJDP7ZhxWTT4sxAWktf1W3idtPXy2rJ_t-MdxKcnyUEi4GNNG1du5sJeqEDWujPqgElYyCkITPoUuFQk2vhAQNqbKx-lCp4RatKHTbj2AikSkvRDsdrX6RWBgZGqw9EtePBZ80iE4Oumv_pgX4VuEQ8sLACE-XHN0jVRSY6Fs1h78NTP7WoncsaowBS-Fr1fQ9qiMOzxdnhqcYVsLoO-CV-0-9F_-P6BOVj3Tcens-mtn-oNgsm3LJlvL70zmT74iisug_rBj31LMzo0WTe2qkBsBw6m2tkua4Imy_BxCtw2gAmGlhTMqFmvMtLwXjAkAoVewdQagLXTy2SjXTg8fTn35fTKlwzsuP4SA0i_ok3E_6Pb__qcO4ldOif__vMQbHPv2vqqLP1Mvs0GSTNRO8B7Xoepuy4YQ', 'https://lh3.googleusercontent.com/proxy/EkziJMeJT8enG1VhX73cbLcZwhF348VdW8CJrnoiG1SiicTmBda6Ax-wigEudbtEVLA_5rQXDmTs9Gm_0XeFmZdTzwahyzlZh87lNUJoRYQDGDe8HbVNG1V-p657eSRAuLsRJnNL4ivajnS-cssondfx8r4gXSZBRCzGvbppO2L6G2uH2k0drdAkiUDNuEwXAAY7_byLshGS5houxDFa4ZTI5LfHtUlILBP2_qKOX3VaDzGCyF9SajVVzoL_wLhX3CZzEAdn7v2CxGWmNMgL-iL6mCPq3TKp0o79f38EiXQc4ajtjlxdol8Afs0_yolhUv_COy89xOnqk6LcvQbURWlVKegCEGRGFrnY8KhN60jkTQQI2oJKnFeqHIUb_MN-CdUZYYs5Q75WijH6TRY97SVA2xMxi2nOjsJddfFC7xo', 'https://lh3.googleusercontent.com/proxy/HR8iLDeLzgXY6BPuEjf3ZRyYjSiz3BY1D4nJ-_s8KA4HjKSjSCaZbHY66rDybC_eN3q1WogFqUDb_RTsIcAdt0WuP4koPPNGByiSCUN04c7bkQQ-K7ez1EBJ5Ys8J-DA84knMyIp96R-QaI4m9vPKrgKw08ibDUVcx-qnqaeJ4ZMBb1lw4U38vavQJ856PChzrOHiKN_IuLVFMMCMsK5xJK76B_h2psB08GhYZ3ycW15Y3BU-qD0Niol1VkP7EdMBldlzDHGuVrbMa8TGVr_Hb2c69V41IQwowCjzKje8BxP7fJ3HMGoizXjWUAlqX7pPubJZQ_5GeUJHflOxNdOhig-vVkivBQnrvPgWboTdB_yscl0ncEaA8fYU5c46AcG0lBYZT7vS2WoRWSc8QRTevOyncP7x8kNxcpgie8ZrsKL9JDbjCxjK_83FgZvvw63h5MW7RS1Pq_5kJ92TcmxEZnFwpGm6eeD-NLEYpTjnzljp3m5F5biIgThAq-yEIdiPxff-lCT5G-LcOjCAEPuGkwn8uf4FxC7mN40nVdXq57cCzURGkHiY7MzlkFe6XywkG4qqTTchmiEEbvITo6aNa7viwJQ4tuFqAvmUkGm8-mdTp25NSFdMBIsRAs4perpInZLlBes3cLN9wpuMz5rl6xoj-HhY74P2leQVQ']


6.times do 
User.create(username: Faker::Name.unique.name)
end 

15.times do 
    Avatar.create(name: Faker::Name.name, image_url: pictures.sample, user_id: User.all.sample.id, turns: rand(1..6), skills: rand(1..10), points: rand(1..20))
end 

puts "create Avatar"

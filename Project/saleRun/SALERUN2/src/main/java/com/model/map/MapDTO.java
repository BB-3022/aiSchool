package com.model.map;

public class MapDTO {
   private String m_addr;
   private String m_name;
   private String m_latitude;
   private String m_longitude;
   
   public MapDTO(String m_addr, String m_name, String m_latitude, String m_longitude) {
      this.m_addr = m_addr;
      this.m_name = m_name;
      this.m_latitude = m_latitude;
      this.m_longitude = m_longitude;
   }

   public MapDTO(String m_addr, String m_name) {
      this.m_addr = m_addr;
      this.m_name = m_name;
   }
   
   public MapDTO(String m_name, String m_latitude, String m_longitude) {
       this.m_name = m_name;
      this.m_latitude = m_latitude;
       this.m_longitude = m_longitude;
   }

   public String getM_addr() {
      return m_addr;
   }

   public String getM_name() {
      return m_name; 
   }

   public String getM_latitude() {
      return m_latitude;
   }

   public String getM_longitude() {
      return m_longitude;
   }
   
   
   
   
   
}
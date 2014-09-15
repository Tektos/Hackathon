package com.example.EasyOpale;

import java.util.ArrayList;

import junit.framework.Test;

import android.support.v7.app.ActionBarActivity;
import android.content.Context;
import android.content.Intent;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationProvider;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;


public class MainActivity extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        final TextView latitude = (TextView)findViewById(R.id.textLatitude);
        final TextView longitude = (TextView)findViewById(R.id.textLongitude);
        Button btnaccesCarte = (Button)findViewById(R.id.accesCarte);
        final Intent page2 = new Intent(this, Carte.class);
        
        btnaccesCarte.setOnClickListener(new OnClickListener(){ 
            public void onClick(View view){ 
            	
                startActivity(page2); 
            }        	
        });
        
        
        
        LocationManager locationManager = (LocationManager)getSystemService(Context.LOCATION_SERVICE);
        
        ArrayList<LocationProvider> providers = new ArrayList<LocationProvider>();
        //ArrayList<String> names = locationManager.getProviders(true);
        ArrayList<String> names = (ArrayList<String>) locationManager.getProviders(true);

        for(String name : names) providers.add(locationManager.getProvider(name));
        
        Criteria critere = new Criteria();

	     // Pour indiquer la précision voulue
	     // On peut mettre ACCURACY_FINE pour une haute précision ou ACCURACY_COARSE pour une moins bonne précision
	     critere.setAccuracy(Criteria.ACCURACY_FINE);
	
	     // Est-ce que le fournisseur doit être capable de donner une altitude ?
	     critere.setAltitudeRequired(true);
	
	     // Est-ce que le fournisseur doit être capable de donner une direction ?
	     critere.setBearingRequired(true);
	
	     // Est-ce que le fournisseur peut être payant ?
	     critere.setCostAllowed(false);
	
	     // Pour indiquer la consommation d'énergie demandée
	     // Criteria.POWER_HIGH pour une haute consommation, Criteria.POWER_MEDIUM pour une consommation moyenne et Criteria.POWER_LOW pour une basse consommation
	     critere.setPowerRequirement(Criteria.POWER_HIGH);
	
	     // Est-ce que le fournisseur doit être capable de donner une vitesse ?
	     critere.setSpeedRequired(true);
	     
	     locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 60000, 150, new LocationListener() {

	    	  @Override
	    	  public void onStatusChanged(String provider, int status, Bundle extras) {

	    	  }

	    	  @Override
	    	  public void onProviderEnabled(String provider) {

	    	  }

	    	  @Override
	    	  public void onProviderDisabled(String provider) {

	    	  }

	    	  @Override
	    	  public void onLocationChanged(Location location) {
	    	    //Log.d("GPS", "Latitude " + location.getLatitude() + " et longitude " + location.getLongitude());
	    	    double varLatitude = location.getLatitude();
	    	    double varLongitude = location.getLongitude();
	    	    longitude.setText(String.valueOf(varLongitude));
	    	    latitude.setText(String.valueOf(varLatitude));
	    	  }
	    	});
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}

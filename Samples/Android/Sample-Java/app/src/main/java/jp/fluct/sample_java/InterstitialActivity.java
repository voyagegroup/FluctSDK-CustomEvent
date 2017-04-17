package jp.fluct.sample_java;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

/**
 * Created by t-sei on 2017/04/14.
 */

public class InterstitialActivity extends AppCompatActivity {
    private Button button;
    private PublisherInterstitialAd interstitialAd;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_interstitial);

        interstitialAd = new PublisherInterstitialAd(this);
        interstitialAd.setAdUnitId(getString(R.string.ad_unit_id_interstitial));
        interstitialAd.setAdListener(new AdListener() {
            @Override
            public void onAdLoaded() {
                super.onAdLoaded();
                button.setEnabled(true);
            }
        });

        PublisherAdRequest adRequest = new PublisherAdRequest.Builder().build();
        interstitialAd.loadAd(adRequest);

        button = ((Button) findViewById(R.id.button));
        button .setEnabled(false);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                showInterstitial();
            }
        });
    }

    private void showInterstitial() {
        if (interstitialAd != null && interstitialAd.isLoaded()) {
            interstitialAd.show();
            button.setEnabled(false);
        } else {
            Toast.makeText(this, "Ad did not load", Toast.LENGTH_SHORT).show();
        }
    }
}

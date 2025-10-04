package com.google.zxing.integration.android;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.journeyapps.barcodescanner.CaptureActivity;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class IntentIntegrator {
    public static final int REQUEST_CODE = 49374;
    private final Activity activity;
    private Class<?> captureActivity;
    private Collection<String> desiredBarcodeFormats;
    private Fragment fragment;
    private final Map<String, Object> moreExtras = new HashMap(3);
    private int requestCode = REQUEST_CODE;
    private androidx.fragment.app.Fragment supportFragment;
    public static final String UPC_A = new ObfuscatedString(new long[]{516783376709832806L, -3337072053028986228L}).toString();
    public static final String UPC_E = new ObfuscatedString(new long[]{488456524958921456L, 4307972151571249728L}).toString();
    public static final String EAN_8 = new ObfuscatedString(new long[]{5335229718297162022L, -1741107296559478882L}).toString();
    public static final String EAN_13 = new ObfuscatedString(new long[]{-1760980494610304445L, -6252982521373118751L}).toString();
    public static final String RSS_14 = new ObfuscatedString(new long[]{-5633102764659290017L, 630800637980176786L}).toString();
    public static final String CODE_39 = new ObfuscatedString(new long[]{346975864606675571L, 6679141218180173136L}).toString();
    public static final String CODE_93 = new ObfuscatedString(new long[]{-8515661522511294177L, 80721237025312790L}).toString();
    public static final String CODE_128 = new ObfuscatedString(new long[]{-2901755625016535616L, -6206912966063499109L}).toString();
    public static final String ITF = new ObfuscatedString(new long[]{-6888459146283969233L, -5081591984286579229L}).toString();
    public static final String RSS_EXPANDED = new ObfuscatedString(new long[]{3683893399219294755L, -4604031578617641729L, -4475078349274349878L}).toString();
    public static final String QR_CODE = new ObfuscatedString(new long[]{3860225265622764899L, -1964383844677128495L}).toString();
    public static final String DATA_MATRIX = new ObfuscatedString(new long[]{641234453915291537L, -7316859190374780714L, -5590161376881422834L}).toString();
    public static final String PDF_417 = new ObfuscatedString(new long[]{-6833317688849690154L, 8544006720859326960L}).toString();
    private static final String TAG = "IntentIntegrator";
    public static final Collection<String> PRODUCT_CODE_TYPES = list(new ObfuscatedString(new long[]{1433453434856099462L, -562173349266732756L}).toString(), new ObfuscatedString(new long[]{7418700312245865573L, 9183878400633312010L}).toString(), new ObfuscatedString(new long[]{-1941597079126328080L, 3352603124038821743L}).toString(), new ObfuscatedString(new long[]{-4839624540919934039L, -7257316107313425681L}).toString(), new ObfuscatedString(new long[]{-1090541010404289238L, 3677106685617842933L}).toString());
    public static final Collection<String> ONE_D_CODE_TYPES = list(new ObfuscatedString(new long[]{3287564470507974494L, -471132979144617504L}).toString(), new ObfuscatedString(new long[]{3109198676255473306L, 2862046411575853217L}).toString(), new ObfuscatedString(new long[]{-5647872219441537243L, 3004628732585224812L}).toString(), new ObfuscatedString(new long[]{-7174432577723141843L, -5320231411423859321L}).toString(), new ObfuscatedString(new long[]{5393543816645304586L, -4301340601331682471L}).toString(), new ObfuscatedString(new long[]{5051142955595995678L, 9146209800803862522L}).toString(), new ObfuscatedString(new long[]{-4896944442591268291L, -8797121458464742135L}).toString(), new ObfuscatedString(new long[]{6954343651657899310L, 954927623194426514L}).toString(), new ObfuscatedString(new long[]{5008630144799722939L, -7751327124167883014L}).toString(), new ObfuscatedString(new long[]{-7679861597522005793L, 122781966009312809L}).toString(), new ObfuscatedString(new long[]{-2613335967139782522L, 1733713529354393815L, -6494277339847060459L}).toString());
    public static final Collection<String> ALL_CODE_TYPES = null;

    public IntentIntegrator(Activity activity) {
        this.activity = activity;
    }

    private void attachMoreExtras(Intent intent) {
        for (Map.Entry<String, Object> entry : this.moreExtras.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Integer) {
                intent.putExtra(key, (Integer) value);
            } else if (value instanceof Long) {
                intent.putExtra(key, (Long) value);
            } else if (value instanceof Boolean) {
                intent.putExtra(key, (Boolean) value);
            } else if (value instanceof Double) {
                intent.putExtra(key, (Double) value);
            } else if (value instanceof Float) {
                intent.putExtra(key, (Float) value);
            } else if (value instanceof Bundle) {
                intent.putExtra(key, (Bundle) value);
            } else if (value instanceof int[]) {
                intent.putExtra(key, (int[]) value);
            } else if (value instanceof long[]) {
                intent.putExtra(key, (long[]) value);
            } else if (value instanceof boolean[]) {
                intent.putExtra(key, (boolean[]) value);
            } else if (value instanceof double[]) {
                intent.putExtra(key, (double[]) value);
            } else if (value instanceof float[]) {
                intent.putExtra(key, (float[]) value);
            } else if (value instanceof String[]) {
                intent.putExtra(key, (String[]) value);
            } else {
                intent.putExtra(key, value.toString());
            }
        }
    }

    @TargetApi(11)
    public static IntentIntegrator forFragment(Fragment fragment) {
        IntentIntegrator intentIntegrator = new IntentIntegrator(fragment.getActivity());
        intentIntegrator.fragment = fragment;
        return intentIntegrator;
    }

    public static IntentIntegrator forSupportFragment(androidx.fragment.app.Fragment fragment) {
        IntentIntegrator intentIntegrator = new IntentIntegrator(fragment.getActivity());
        intentIntegrator.supportFragment = fragment;
        return intentIntegrator;
    }

    private static List<String> list(String... strArr) {
        return DesugarCollections.unmodifiableList(Arrays.asList(strArr));
    }

    public static IntentResult parseActivityResult(int i, int i2, Intent intent) {
        if (i == 49374) {
            return parseActivityResult(i2, intent);
        }
        return null;
    }

    public final IntentIntegrator addExtra(String str, Object obj) {
        this.moreExtras.put(str, obj);
        return this;
    }

    public Intent createScanIntent() {
        Intent intent = new Intent(this.activity, getCaptureActivity());
        intent.setAction(new ObfuscatedString(new long[]{1672066936941094556L, -7371954541537017998L, 7891947594213308226L, 8138660244134773683L, 8127399683475766476L, -4812327494365479647L}).toString());
        if (this.desiredBarcodeFormats != null) {
            StringBuilder sb = new StringBuilder();
            for (String str : this.desiredBarcodeFormats) {
                if (sb.length() > 0) {
                    sb.append(',');
                }
                sb.append(str);
            }
            intent.putExtra(new ObfuscatedString(new long[]{-7333408074796087666L, 266800805707628971L, 2270280866493511402L}).toString(), sb.toString());
        }
        intent.addFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
        intent.addFlags(524288);
        attachMoreExtras(intent);
        return intent;
    }

    public Class<?> getCaptureActivity() {
        if (this.captureActivity == null) {
            this.captureActivity = getDefaultCaptureActivity();
        }
        return this.captureActivity;
    }

    public Class<?> getDefaultCaptureActivity() {
        return CaptureActivity.class;
    }

    public Map<String, ?> getMoreExtras() {
        return this.moreExtras;
    }

    public final void initiateScan() {
        startActivityForResult(createScanIntent(), this.requestCode);
    }

    public IntentIntegrator setBarcodeImageEnabled(boolean z) {
        addExtra(new ObfuscatedString(new long[]{-6837071961221727749L, 2731692661964446269L, 5137323543114417869L, -6845660234546988551L}).toString(), Boolean.valueOf(z));
        return this;
    }

    public IntentIntegrator setBeepEnabled(boolean z) {
        addExtra(new ObfuscatedString(new long[]{3482519455163573842L, 5805317477054000851L, -3308601631948923569L}).toString(), Boolean.valueOf(z));
        return this;
    }

    public IntentIntegrator setCameraId(int i) {
        if (i >= 0) {
            addExtra(new ObfuscatedString(new long[]{-7278616746988354044L, 2493075027134004844L, 1570735261999023740L}).toString(), Integer.valueOf(i));
        }
        return this;
    }

    public IntentIntegrator setCaptureActivity(Class<?> cls) {
        this.captureActivity = cls;
        return this;
    }

    public IntentIntegrator setDesiredBarcodeFormats(Collection<String> collection) {
        this.desiredBarcodeFormats = collection;
        return this;
    }

    public IntentIntegrator setOrientationLocked(boolean z) {
        addExtra(new ObfuscatedString(new long[]{-1594079177091543655L, 1192670592853852754L, 9078691345215183486L, 883071165437699230L}).toString(), Boolean.valueOf(z));
        return this;
    }

    public final IntentIntegrator setPrompt(String str) {
        if (str != null) {
            addExtra(new ObfuscatedString(new long[]{-6945880560129730547L, -5165429816292577026L, -1820391311663094071L}).toString(), str);
        }
        return this;
    }

    public IntentIntegrator setRequestCode(int i) {
        if (i > 0 && i <= 65535) {
            this.requestCode = i;
            return this;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3657288801198989218L, -4836043034649628644L, -2122367792598062476L, 5102977790038786383L}).toString());
    }

    public IntentIntegrator setTimeout(long j) {
        addExtra(new ObfuscatedString(new long[]{6256996730443101226L, 3834647348104890279L}).toString(), Long.valueOf(j));
        return this;
    }

    public IntentIntegrator setTorchEnabled(boolean z) {
        addExtra(new ObfuscatedString(new long[]{-902539404345290025L, -3421918036121246210L, 2508782663122367464L}).toString(), Boolean.valueOf(z));
        return this;
    }

    public void startActivity(Intent intent) {
        Fragment fragment = this.fragment;
        if (fragment != null) {
            fragment.startActivity(intent);
            return;
        }
        androidx.fragment.app.Fragment fragment2 = this.supportFragment;
        if (fragment2 != null) {
            fragment2.startActivity(intent);
        } else {
            this.activity.startActivity(intent);
        }
    }

    public void startActivityForResult(Intent intent, int i) {
        Fragment fragment = this.fragment;
        if (fragment != null) {
            fragment.startActivityForResult(intent, i);
            return;
        }
        androidx.fragment.app.Fragment fragment2 = this.supportFragment;
        if (fragment2 != null) {
            fragment2.startActivityForResult(intent, i);
        } else {
            this.activity.startActivityForResult(intent, i);
        }
    }

    public static IntentResult parseActivityResult(int i, Intent intent) {
        if (i == -1) {
            String stringExtra = intent.getStringExtra(new ObfuscatedString(new long[]{329726042666950540L, -3971867894848746332L, 640458876348671043L}).toString());
            String stringExtra2 = intent.getStringExtra(new ObfuscatedString(new long[]{-2187467671551637445L, -6882126377951891934L, 8646571172375882416L, 6497012696605826059L}).toString());
            byte[] byteArrayExtra = intent.getByteArrayExtra(new ObfuscatedString(new long[]{5248680669540362347L, 6888987063847379060L, -1240907977123154738L, -437986291221615617L}).toString());
            int intExtra = intent.getIntExtra(new ObfuscatedString(new long[]{-2818756744075739164L, 2703843668825768976L, -527609667481066483L, 6299301122936887016L}).toString(), Integer.MIN_VALUE);
            return new IntentResult(stringExtra, stringExtra2, byteArrayExtra, intExtra == Integer.MIN_VALUE ? null : Integer.valueOf(intExtra), intent.getStringExtra(new ObfuscatedString(new long[]{-6104685734083976327L, 7682008962622107443L, 1445718789341959331L, -1590889779804059184L, -3595052678144329874L, -1793719536167612777L}).toString()), intent.getStringExtra(new ObfuscatedString(new long[]{-5653788012875398914L, -7478375357908118055L, 5192242442913508070L, 5729432548092924867L}).toString()), intent);
        }
        return new IntentResult(intent);
    }

    public final void initiateScan(Collection<String> collection) {
        setDesiredBarcodeFormats(collection);
        initiateScan();
    }

    public IntentIntegrator setDesiredBarcodeFormats(String... strArr) {
        this.desiredBarcodeFormats = Arrays.asList(strArr);
        return this;
    }
}

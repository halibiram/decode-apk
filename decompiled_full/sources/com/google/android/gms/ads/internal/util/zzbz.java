package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzfgm;
import com.google.android.gms.internal.ads.zzfwp;
import com.google.android.gms.internal.ads.zzfxr;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbz {
    public static Point zza(MotionEvent motionEvent, @Nullable View view) {
        int[] zzj = zzj(view);
        return new Point(((int) motionEvent.getRawX()) - zzj[0], ((int) motionEvent.getRawY()) - zzj[1]);
    }

    public static WindowManager.LayoutParams zzb() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhT)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    public static JSONObject zzc(@Nullable String str, Context context, Point point, Point point2) {
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                String obfuscatedString = new ObfuscatedString(new long[]{1591072757175437326L, -1572288641400427548L, 1447672694947731732L}).toString();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put(new ObfuscatedString(new long[]{-2842746252482083035L, 8350799037848233257L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, point2.x));
                    jSONObject3.put(new ObfuscatedString(new long[]{356510378884079659L, 6952792404052110416L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, point2.y));
                    jSONObject3.put(new ObfuscatedString(new long[]{8529681879630575090L, 4966944850291765010L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, point.x));
                    jSONObject3.put(new ObfuscatedString(new long[]{-3632002241787758179L, 3315865772631324608L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, point.y));
                    jSONObject = jSONObject3;
                } catch (JSONException e) {
                    zzcec.zzh(new ObfuscatedString(new long[]{-8074421497456226132L, 8404387436466525487L, -8850553123999297563L, -7163789168852122619L, -5003725225330244511L, 5379004636633394271L, 1946618093035428437L, 5888907018845571039L}).toString(), e);
                }
                jSONObject2.put(obfuscatedString, jSONObject);
                jSONObject2.put(new ObfuscatedString(new long[]{8319107251195005481L, -6341554322862531135L}).toString(), str);
                return jSONObject2;
            } catch (Exception e2) {
                e = e2;
                jSONObject = jSONObject2;
                zzcec.zzh(new ObfuscatedString(new long[]{-2829023723023384121L, 7284393855624331570L, -780388066897539953L, -667704274994069043L, 7826422461921386299L, -7764384343569613888L, 2702498310750549320L}).toString(), e);
                return jSONObject;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x02b8 A[Catch: JSONException -> 0x032c, TryCatch #1 {JSONException -> 0x032c, blocks: (B:37:0x029f, B:38:0x02b4, B:42:0x02b8, B:43:0x02fb, B:45:0x030b, B:47:0x0315, B:50:0x031e), top: B:36:0x029f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JSONObject zzd(Context context, @Nullable Map map, @Nullable Map map2, @Nullable View view, @Nullable ImageView.ScaleType scaleType) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (map != null && view != null) {
            int[] zzj = zzj(view);
            for (Map.Entry entry : map.entrySet()) {
                View view2 = (View) ((WeakReference) entry.getValue()).get();
                if (view2 != null) {
                    int[] zzj2 = zzj(view2);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    try {
                        jSONObject4.put(new ObfuscatedString(new long[]{5708438691603829374L, 3284438772722670815L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, view2.getMeasuredWidth()));
                        jSONObject4.put(new ObfuscatedString(new long[]{6149600939458007001L, 4966675754655042283L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, view2.getMeasuredHeight()));
                        jSONObject4.put(new ObfuscatedString(new long[]{7918755637374604317L, 2354138966104245219L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, zzj2[0] - zzj[0]));
                        jSONObject4.put(new ObfuscatedString(new long[]{5228120127812681017L, 7515842016237347092L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, zzj2[1] - zzj[1]));
                        jSONObject4.put(new ObfuscatedString(new long[]{7414390967055792293L, -216630088791695849L, -5688531718048109277L}).toString(), new ObfuscatedString(new long[]{-7566748231414832886L, 6743328520188040800L}).toString());
                        jSONObject3.put(new ObfuscatedString(new long[]{-8152934322311100418L, -4438263949056336879L}).toString(), jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = zzk(context, rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put(new ObfuscatedString(new long[]{-7551654818074424507L, 546365409005856615L}).toString(), 0);
                            jSONObject.put(new ObfuscatedString(new long[]{5108874276080114071L, -1991647208505594323L}).toString(), 0);
                            jSONObject.put(new ObfuscatedString(new long[]{-3553674865619786692L, -8352675428701628173L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, zzj2[0] - zzj[0]));
                            jSONObject.put(new ObfuscatedString(new long[]{2091114776629913010L, 9016550666430857565L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, zzj2[1] - zzj[1]));
                            jSONObject.put(new ObfuscatedString(new long[]{-6509170315617220862L, -5625918563789665838L, -1761886254810159486L}).toString(), new ObfuscatedString(new long[]{3290883819038610414L, -9219087454855200928L}).toString());
                        }
                        jSONObject3.put(new ObfuscatedString(new long[]{2442605589438925206L, 515695893105126446L, -2984971423302421268L}).toString(), jSONObject);
                        if (((String) entry.getKey()).equals(new ObfuscatedString(new long[]{-3154453368506256632L, 1928701820951206216L}).toString())) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhN)).booleanValue()) {
                                jSONObject3.put(new ObfuscatedString(new long[]{2575380883622285322L, 7655122813883610866L, 4908486226784063491L, -713605285632200401L, 8940761984750591606L}).toString(), view2.getMatrix().toShortString());
                            }
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhO)).booleanValue()) {
                                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                                jSONObject3.put(new ObfuscatedString(new long[]{2736535646049168078L, -4875600356933197141L, 3737003443445731822L, -4075318980077214474L}).toString(), zzl(layoutParams.width) - 1);
                                jSONObject3.put(new ObfuscatedString(new long[]{-8985386968292533848L, 4476020335376395398L, 8248487317553767029L, -6867150178418099182L}).toString(), zzl(layoutParams.height) - 1);
                            }
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhP)).booleanValue()) {
                                String obfuscatedString = new ObfuscatedString(new long[]{39101166533384290L, -1478058965317016546L, -2683232017233318310L}).toString();
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(Integer.valueOf(view2.getId()));
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    arrayList.add(Integer.valueOf(((View) parent).getId()));
                                }
                                jSONObject3.put(obfuscatedString, TextUtils.join(new ObfuscatedString(new long[]{4570419494078325995L, 8760154685944862302L}).toString(), arrayList));
                            }
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhQ)).booleanValue() && scaleType != null) {
                                try {
                                    jSONObject3.put(new ObfuscatedString(new long[]{498418698219336152L, -6777049031733422155L, -6816975290935898549L, -2895621491683081185L}).toString(), scaleType.ordinal());
                                    if (view2 instanceof TextView) {
                                        TextView textView = (TextView) view2;
                                        jSONObject3.put(new ObfuscatedString(new long[]{199717938100021860L, 4149669799705288182L, -7831921188594414499L}).toString(), textView.getCurrentTextColor());
                                        jSONObject3.put(new ObfuscatedString(new long[]{-4097600156606234446L, -763575429815037840L, -2111434917761130861L}).toString(), textView.getTextSize());
                                        jSONObject3.put(new ObfuscatedString(new long[]{-1085322919658426139L, -86680442801142625L}).toString(), textView.getText());
                                    }
                                    jSONObject3.put(new ObfuscatedString(new long[]{-5503394150346142596L, -2869891254772197521L, -3059419339080549333L}).toString(), map2 == null && map2.containsKey(entry.getKey()) && view2.isClickable());
                                    jSONObject2.put((String) entry.getKey(), jSONObject3);
                                } catch (JSONException unused) {
                                    zzcec.zzj(new ObfuscatedString(new long[]{513267466852143764L, -3685579154440697590L, -5457671373446011649L, -1441872653733227702L, -418354303979851602L, -5029271015085085789L}).toString());
                                }
                            }
                        }
                        if (view2 instanceof TextView) {
                        }
                        jSONObject3.put(new ObfuscatedString(new long[]{-5503394150346142596L, -2869891254772197521L, -3059419339080549333L}).toString(), map2 == null && map2.containsKey(entry.getKey()) && view2.isClickable());
                        jSONObject2.put((String) entry.getKey(), jSONObject3);
                    } catch (JSONException unused2) {
                    }
                }
            }
        }
        return jSONObject2;
    }

    public static JSONObject zze(Context context, @Nullable View view) {
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                String obfuscatedString = new ObfuscatedString(new long[]{-349143247475591563L, -3875328205732926325L, 8925978474754380059L, 5229424443613954953L}).toString();
                com.google.android.gms.ads.internal.zzt.zzp();
                jSONObject.put(obfuscatedString, zzt.zzn(view));
                String obfuscatedString2 = new ObfuscatedString(new long[]{4713811869644161764L, -7023261889147692340L, 2055999773835725602L, -4346399718737927572L}).toString();
                com.google.android.gms.ads.internal.zzt.zzp();
                jSONObject.put(obfuscatedString2, zzt.zzC(context));
            } catch (JSONException unused) {
                zzcec.zzj(new ObfuscatedString(new long[]{6526213878754969633L, 375566744482868225L, -6144442152354405033L, 4627822568506351014L, -1495952510793325166L, 3157009855841924341L}).toString());
            }
        }
        return jSONObject;
    }

    public static JSONObject zzf(@Nullable View view) {
        int positionForView;
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                boolean z = true;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhM)).booleanValue()) {
                    String obfuscatedString = new ObfuscatedString(new long[]{353136591139252782L, -5333988611352476641L, -3528266709121285529L, -3223396528303874298L}).toString();
                    com.google.android.gms.ads.internal.zzt.zzp();
                    ViewParent parent = view.getParent();
                    while (parent != null && !(parent instanceof ScrollView)) {
                        parent = parent.getParent();
                    }
                    if (parent == null) {
                        z = false;
                    }
                    jSONObject.put(obfuscatedString, z);
                } else {
                    com.google.android.gms.ads.internal.zzt.zzp();
                    ViewParent parent2 = view.getParent();
                    while (parent2 != null && !(parent2 instanceof AdapterView)) {
                        parent2 = parent2.getParent();
                    }
                    if (parent2 == null) {
                        positionForView = -1;
                    } else {
                        positionForView = ((AdapterView) parent2).getPositionForView(view);
                    }
                    String obfuscatedString2 = new ObfuscatedString(new long[]{-7421026820075205939L, -1523046579510392992L, -3101549196956675972L, -7414250150492076734L}).toString();
                    if (positionForView == -1) {
                        z = false;
                    }
                    jSONObject.put(obfuscatedString2, z);
                }
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x02ad -> B:30:0x02be). Please report as a decompilation issue!!! */
    public static JSONObject zzg(Context context, @Nullable View view) {
        char c;
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (view != null) {
            try {
                int[] zzj = zzj(view);
                int[] iArr = {view.getMeasuredWidth(), view.getMeasuredHeight()};
                for (ViewParent parent = view.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                    ViewGroup viewGroup = (ViewGroup) parent;
                    iArr[0] = Math.min(viewGroup.getMeasuredWidth(), iArr[0]);
                    iArr[1] = Math.min(viewGroup.getMeasuredHeight(), iArr[1]);
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(new ObfuscatedString(new long[]{-7109640178876132620L, -7991982320963452048L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, view.getMeasuredWidth()));
                jSONObject3.put(new ObfuscatedString(new long[]{-4886624474494833863L, 3141758708077273290L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, view.getMeasuredHeight()));
                jSONObject3.put(new ObfuscatedString(new long[]{5597934941414420815L, -6361260916279384174L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, zzj[0]));
                jSONObject3.put(new ObfuscatedString(new long[]{-1484812621272413489L, 3543248842627018967L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, zzj[1]));
                jSONObject3.put(new ObfuscatedString(new long[]{6514553449063369263L, 527678720538277984L, -185045225855576351L, -7359048225670388048L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, iArr[0]));
                jSONObject3.put(new ObfuscatedString(new long[]{-7731946656367262077L, 6190464720102444136L, -7638473366415692570L, 8281555328726864730L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, iArr[1]));
                jSONObject3.put(new ObfuscatedString(new long[]{6400805556030056803L, -6548541568401010370L, -1781551745730084561L}).toString(), new ObfuscatedString(new long[]{-6484451512087844744L, -5168052395873814075L}).toString());
                jSONObject2.put(new ObfuscatedString(new long[]{-994681633069587388L, -7257469409419852079L}).toString(), jSONObject3);
                Rect rect = new Rect();
                if (view.getGlobalVisibleRect(rect)) {
                    jSONObject = zzk(context, rect);
                } else {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put(new ObfuscatedString(new long[]{5799812266539492348L, 9150236948235294875L}).toString(), 0);
                    jSONObject4.put(new ObfuscatedString(new long[]{-254046358101707172L, 392495271546189953L}).toString(), 0);
                    jSONObject4.put(new ObfuscatedString(new long[]{8186007563452036010L, -919831487235060725L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, zzj[0]));
                    jSONObject4.put(new ObfuscatedString(new long[]{400471399464647301L, 5751413730593136465L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, zzj[1]));
                    jSONObject4.put(new ObfuscatedString(new long[]{-4483221233066498760L, -8985695255390568494L, -468258621588122708L}).toString(), new ObfuscatedString(new long[]{4703170327581798551L, -6614546963867776287L}).toString());
                    jSONObject = jSONObject4;
                }
                jSONObject2.put(new ObfuscatedString(new long[]{-2186592926421818888L, 7953834107124279560L, -5906574225744472511L}).toString(), jSONObject);
            } catch (Exception unused) {
                zzcec.zzj(new ObfuscatedString(new long[]{-4757392416285904431L, -1019570767664982226L, -9023290993137801962L, 4339252398057336685L, 6993124085296118750L, -2266527775877851672L, -6306880484496886588L}).toString());
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgl)).booleanValue()) {
                ViewParent parent2 = view.getParent();
                String obfuscatedString = new ObfuscatedString(new long[]{-5220480476156410339L}).toString();
                if (parent2 != null) {
                    try {
                        obfuscatedString = (String) parent2.getClass().getMethod(new ObfuscatedString(new long[]{-246935817678074797L, 214392280327649287L, -3877263452909263494L, -4691277400884981423L}).toString(), null).invoke(parent2, null);
                    } catch (IllegalAccessException e) {
                        e = e;
                        zzcec.zzh(new ObfuscatedString(new long[]{-7917705054019096547L, -1365228767925691276L, -6333120236551813939L, -1444702958392783411L, 4943805810996782221L, -2237140382840158393L, 5223210171744807740L}).toString(), e);
                    } catch (NoSuchMethodException unused2) {
                    } catch (SecurityException e2) {
                        e = e2;
                        zzcec.zzh(new ObfuscatedString(new long[]{-7917705054019096547L, -1365228767925691276L, -6333120236551813939L, -1444702958392783411L, 4943805810996782221L, -2237140382840158393L, 5223210171744807740L}).toString(), e);
                    } catch (InvocationTargetException e3) {
                        e = e3;
                        zzcec.zzh(new ObfuscatedString(new long[]{-7917705054019096547L, -1365228767925691276L, -6333120236551813939L, -1444702958392783411L, 4943805810996782221L, -2237140382840158393L, 5223210171744807740L}).toString(), e);
                    }
                }
                try {
                    int hashCode = obfuscatedString.hashCode();
                    if (hashCode != -2066603854) {
                        if (hashCode == 2019754500 && obfuscatedString.equals(new ObfuscatedString(new long[]{4341263918973930869L, 4310748542579633949L, 1302401343454369382L}).toString())) {
                            c = 1;
                        }
                        c = 65535;
                    } else {
                        if (obfuscatedString.equals(new ObfuscatedString(new long[]{-8162934013837401608L, 3061412273501744300L, 4876208299640077424L}).toString())) {
                            c = 0;
                        }
                        c = 65535;
                    }
                    if (c != 0) {
                        if (c != 1) {
                            jSONObject2.put(new ObfuscatedString(new long[]{2406624743452838477L, -2617559232523705623L, 4285999525599378897L, 5934587473721626178L}).toString(), 0);
                        } else {
                            jSONObject2.put(new ObfuscatedString(new long[]{-2408742861931469763L, 3909451484279948279L, 1207522411227909983L, 2973394382859775224L}).toString(), 2);
                        }
                    } else {
                        jSONObject2.put(new ObfuscatedString(new long[]{5746654686808828234L, -5100473039019447561L, 3764906412728001170L, -4447969277068007694L}).toString(), 1);
                    }
                } catch (JSONException e4) {
                    zzcec.zzh(new ObfuscatedString(new long[]{1551041947319658476L, 9218519208117934515L, -4798096455459144706L, -1080592517126844732L, -370238659159469158L, -3847863012964388188L, -4142606823575680780L}).toString(), e4);
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhO)).booleanValue()) {
                try {
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    jSONObject2.put(new ObfuscatedString(new long[]{-3059031373421825565L, -7504912761548611963L, 69021554176986594L, 2556215034678333402L}).toString(), zzl(layoutParams.width) - 1);
                    jSONObject2.put(new ObfuscatedString(new long[]{-4421440460319125091L, -4757538400284184701L, -5567484480713755350L, -3511096899221464428L}).toString(), zzl(layoutParams.height) - 1);
                } catch (Exception unused3) {
                    zze.zza(new ObfuscatedString(new long[]{3603215008537943548L, -7214702187016901721L, -3377900362302887346L, -514889379217704602L, 1312365287645418170L, -6345557822814848997L, -5728881455130282475L}).toString());
                }
            }
        }
        return jSONObject2;
    }

    public static boolean zzh(Context context, zzfgm zzfgmVar) {
        if (!zzfgmVar.zzO) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhR)).booleanValue()) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhU)).booleanValue();
        }
        String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhS);
        if (!str.isEmpty() && context != null) {
            String packageName = context.getPackageName();
            Iterator it = zzfxr.zzc(zzfwp.zzc(';')).zzd(str).iterator();
            while (it.hasNext()) {
                if (((String) it.next()).equals(packageName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean zzi(int i) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdn)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdo)).booleanValue() && i > 15299999) {
                return false;
            }
            return true;
        }
        return true;
    }

    public static int[] zzj(@Nullable View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    private static JSONObject zzk(Context context, Rect rect) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(new ObfuscatedString(new long[]{-7535233053873125215L, -3777066545488779954L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, rect.right - rect.left));
        jSONObject.put(new ObfuscatedString(new long[]{126007762335643275L, 1848647227206545477L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, rect.bottom - rect.top));
        jSONObject.put(new ObfuscatedString(new long[]{-652270636117117253L, 1132802256819135521L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, rect.left));
        jSONObject.put(new ObfuscatedString(new long[]{5154163862089586546L, -4610479947324050865L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(context, rect.top));
        jSONObject.put(new ObfuscatedString(new long[]{1874192979427731834L, 4225206532244110677L, -5717763201449182879L}).toString(), new ObfuscatedString(new long[]{573400622893279117L, 4268497899342785218L}).toString());
        return jSONObject;
    }

    private static int zzl(int i) {
        if (i != -2) {
            return i != -1 ? 2 : 3;
        }
        return 4;
    }
}

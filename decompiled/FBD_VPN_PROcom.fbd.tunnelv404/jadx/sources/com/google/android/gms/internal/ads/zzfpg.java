package com.google.android.gms.internal.ads;

import android.view.View;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfpg implements zzfpe {
    private final zzfpe zza;

    public zzfpg(zzfpe zzfpeVar) {
        this.zza = zzfpeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfpe
    public final JSONObject zza(View view) {
        boolean z = false;
        JSONObject zza = zzfpo.zza(0, 0, 0, 0);
        int zzb = zzfpr.zzb();
        int i = zzb - 1;
        if (zzb != 0) {
            if (i == 0) {
                z = true;
            }
            try {
                zza.put(new ObfuscatedString(new long[]{-8195381396794176359L, -9003625756668390246L, 5412847642965755281L}).toString(), z);
            } catch (JSONException e) {
                zzfpp.zza(new ObfuscatedString(new long[]{3477831866139872447L, 2877140949026621766L, -4640104954892794571L, 3149363182117400L, -3495395929751228584L, -2722769262289721834L}).toString(), e);
            }
            return zza;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfpe
    public final void zzb(View view, JSONObject jSONObject, zzfpd zzfpdVar, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        zzfov zza = zzfov.zza();
        if (zza != null) {
            Collection zzb = zza.zzb();
            int size = zzb.size();
            IdentityHashMap identityHashMap = new IdentityHashMap(size + size + 3);
            Iterator it = zzb.iterator();
            while (it.hasNext()) {
                View zzf = ((zzfoh) it.next()).zzf();
                if (zzf != null && zzf.isAttachedToWindow() && zzf.isShown()) {
                    View view2 = zzf;
                    while (true) {
                        if (view2 != null) {
                            if (view2.getAlpha() != 0.0f) {
                                Object parent = view2.getParent();
                                if (parent instanceof View) {
                                    view2 = (View) parent;
                                } else {
                                    view2 = null;
                                }
                            }
                        } else {
                            View rootView = zzf.getRootView();
                            if (rootView != null && !identityHashMap.containsKey(rootView)) {
                                identityHashMap.put(rootView, rootView);
                                float z3 = rootView.getZ();
                                int size2 = arrayList.size();
                                while (size2 > 0) {
                                    int i = size2 - 1;
                                    if (((View) arrayList.get(i)).getZ() <= z3) {
                                        break;
                                    } else {
                                        size2 = i;
                                    }
                                }
                                arrayList.add(size2, rootView);
                            }
                        }
                    }
                }
            }
        }
        int size3 = arrayList.size();
        for (int i2 = 0; i2 < size3; i2++) {
            zzfpdVar.zza((View) arrayList.get(i2), this.zza, jSONObject, z2);
        }
    }
}

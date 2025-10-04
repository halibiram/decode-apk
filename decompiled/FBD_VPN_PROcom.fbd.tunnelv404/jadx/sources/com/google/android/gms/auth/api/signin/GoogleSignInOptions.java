package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.auth.api.signin.internal.HashAccumulator;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "GoogleSignInOptionsCreator")
/* loaded from: classes2.dex */
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;

    @NonNull
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN;

    @NonNull
    public static final GoogleSignInOptions DEFAULT_SIGN_IN;

    @NonNull
    @VisibleForTesting
    public static final Scope zaa = new Scope(new ObfuscatedString(new long[]{5143700219886709612L, 7397291928478429890L}).toString());

    @NonNull
    @VisibleForTesting
    public static final Scope zab = new Scope(new ObfuscatedString(new long[]{125786018067056195L, -1370340666394015763L}).toString());

    @NonNull
    @VisibleForTesting
    public static final Scope zac = new Scope(new ObfuscatedString(new long[]{-5794526034790085471L, -8559133020749870903L}).toString());

    @NonNull
    @VisibleForTesting
    public static final Scope zad;

    @NonNull
    @VisibleForTesting
    public static final Scope zae;
    private static Comparator<Scope> zag;

    @SafeParcelable.VersionField(id = 1)
    final int zaf;

    @SafeParcelable.Field(getter = "getScopes", id = 2)
    private final ArrayList<Scope> zah;

    @Nullable
    @SafeParcelable.Field(getter = "getAccount", id = 3)
    private Account zai;

    @SafeParcelable.Field(getter = "isIdTokenRequested", id = 4)
    private boolean zaj;

    @SafeParcelable.Field(getter = "isServerAuthCodeRequested", id = 5)
    private final boolean zak;

    @SafeParcelable.Field(getter = "isForceCodeForRefreshToken", id = 6)
    private final boolean zal;

    @Nullable
    @SafeParcelable.Field(getter = "getServerClientId", id = 7)
    private String zam;

    @Nullable
    @SafeParcelable.Field(getter = "getHostedDomain", id = 8)
    private String zan;

    @SafeParcelable.Field(getter = "getExtensions", id = 9)
    private ArrayList<GoogleSignInOptionsExtensionParcelable> zao;

    @Nullable
    @SafeParcelable.Field(getter = "getLogSessionId", id = 10)
    private String zap;
    private Map<Integer, GoogleSignInOptionsExtensionParcelable> zaq;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private Set<Scope> zaa;
        private boolean zab;
        private boolean zac;
        private boolean zad;

        @Nullable
        private String zae;

        @Nullable
        private Account zaf;

        @Nullable
        private String zag;
        private Map<Integer, GoogleSignInOptionsExtensionParcelable> zah;

        @Nullable
        private String zai;

        public Builder() {
            this.zaa = new HashSet();
            this.zah = new HashMap();
        }

        private final String zaa(String str) {
            Preconditions.checkNotEmpty(str);
            String str2 = this.zae;
            boolean z = true;
            if (str2 != null && !str2.equals(str)) {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{2804674400913883463L, -6990469267177615L, -8241729904957032761L, 5803748744947171370L, 1645542246418498278L, -5624675814614297619L}).toString());
            return str;
        }

        @NonNull
        public Builder addExtension(@NonNull GoogleSignInOptionsExtension googleSignInOptionsExtension) {
            if (!this.zah.containsKey(Integer.valueOf(googleSignInOptionsExtension.getExtensionType()))) {
                List<Scope> impliedScopes = googleSignInOptionsExtension.getImpliedScopes();
                if (impliedScopes != null) {
                    this.zaa.addAll(impliedScopes);
                }
                this.zah.put(Integer.valueOf(googleSignInOptionsExtension.getExtensionType()), new GoogleSignInOptionsExtensionParcelable(googleSignInOptionsExtension));
                return this;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{-7022775224991425607L, 307470427662498346L, -433743735434483874L, -1032329866060850546L, -7499650675559939272L, 231549847311595163L}).toString());
        }

        @NonNull
        public GoogleSignInOptions build() {
            if (this.zaa.contains(GoogleSignInOptions.zae)) {
                Set<Scope> set = this.zaa;
                Scope scope = GoogleSignInOptions.zad;
                if (set.contains(scope)) {
                    this.zaa.remove(scope);
                }
            }
            if (this.zad && (this.zaf == null || !this.zaa.isEmpty())) {
                requestId();
            }
            return new GoogleSignInOptions(new ArrayList(this.zaa), this.zaf, this.zad, this.zab, this.zac, this.zae, this.zag, this.zah, this.zai);
        }

        @NonNull
        public Builder requestEmail() {
            this.zaa.add(GoogleSignInOptions.zab);
            return this;
        }

        @NonNull
        public Builder requestId() {
            this.zaa.add(GoogleSignInOptions.zac);
            return this;
        }

        @NonNull
        public Builder requestIdToken(@NonNull String str) {
            this.zad = true;
            zaa(str);
            this.zae = str;
            return this;
        }

        @NonNull
        public Builder requestProfile() {
            this.zaa.add(GoogleSignInOptions.zaa);
            return this;
        }

        @NonNull
        public Builder requestScopes(@NonNull Scope scope, @NonNull Scope... scopeArr) {
            this.zaa.add(scope);
            this.zaa.addAll(Arrays.asList(scopeArr));
            return this;
        }

        @NonNull
        public Builder requestServerAuthCode(@NonNull String str) {
            requestServerAuthCode(str, false);
            return this;
        }

        @NonNull
        public Builder setAccountName(@NonNull String str) {
            this.zaf = new Account(Preconditions.checkNotEmpty(str), new ObfuscatedString(new long[]{-4227066489156930429L, 231917689683626502L, -366919279120366861L}).toString());
            return this;
        }

        @NonNull
        public Builder setHostedDomain(@NonNull String str) {
            this.zag = Preconditions.checkNotEmpty(str);
            return this;
        }

        @NonNull
        @KeepForSdk
        public Builder setLogSessionId(@NonNull String str) {
            this.zai = str;
            return this;
        }

        @NonNull
        public Builder requestServerAuthCode(@NonNull String str, boolean z) {
            this.zab = true;
            zaa(str);
            this.zae = str;
            this.zac = z;
            return this;
        }

        public Builder(@NonNull GoogleSignInOptions googleSignInOptions) {
            this.zaa = new HashSet();
            this.zah = new HashMap();
            Preconditions.checkNotNull(googleSignInOptions);
            this.zaa = new HashSet(googleSignInOptions.zah);
            this.zab = googleSignInOptions.zak;
            this.zac = googleSignInOptions.zal;
            this.zad = googleSignInOptions.zaj;
            this.zae = googleSignInOptions.zam;
            this.zaf = googleSignInOptions.zai;
            this.zag = googleSignInOptions.zan;
            this.zah = GoogleSignInOptions.zam(googleSignInOptions.zao);
            this.zai = googleSignInOptions.zap;
        }
    }

    static {
        Scope scope = new Scope(new ObfuscatedString(new long[]{3574424886280508593L, 2603109791409249651L, -8464537209584967356L, -6799113219663334157L, 1965741913121694447L, 2703146786228133705L, 2002033812709235183L}).toString());
        zad = scope;
        zae = new Scope(new ObfuscatedString(new long[]{-6283863459905969645L, 2574055896548280884L, -4154275636524285996L, -8692131353197000468L, 4139258776725620016L, 985443921135428797L}).toString());
        Builder builder = new Builder();
        builder.requestId();
        builder.requestProfile();
        DEFAULT_SIGN_IN = builder.build();
        Builder builder2 = new Builder();
        builder2.requestScopes(scope, new Scope[0]);
        DEFAULT_GAMES_SIGN_IN = builder2.build();
        CREATOR = new zae();
        zag = new zac();
    }

    @Nullable
    public static GoogleSignInOptions zab(@Nullable String str) {
        String str2;
        Account account;
        String str3;
        String str4 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray(new ObfuscatedString(new long[]{1657268108754027107L, 2499875010655631174L}).toString());
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        if (jSONObject.has(new ObfuscatedString(new long[]{-4774841280927862090L, -7351709585967657286L, 4888138818282062L}).toString())) {
            str2 = jSONObject.optString(new ObfuscatedString(new long[]{4653898420184220188L, 8267181180863932760L, -4673924367707148369L}).toString());
        } else {
            str2 = null;
        }
        if (!TextUtils.isEmpty(str2)) {
            account = new Account(str2, new ObfuscatedString(new long[]{1205412524918754850L, -838444228759126760L, -2510844068230399738L}).toString());
        } else {
            account = null;
        }
        ArrayList arrayList = new ArrayList(hashSet);
        boolean z = jSONObject.getBoolean(new ObfuscatedString(new long[]{-4241744940892593991L, 2128505420710534847L, -1753205738376912546L}).toString());
        boolean z2 = jSONObject.getBoolean(new ObfuscatedString(new long[]{-4466374703512090526L, -1041634210115909996L, 9028990674188170711L, 3255770123931942281L}).toString());
        boolean z3 = jSONObject.getBoolean(new ObfuscatedString(new long[]{-51873609580837688L, 3205612682165801221L, -2292559050331970136L, 8641878283126968276L}).toString());
        if (jSONObject.has(new ObfuscatedString(new long[]{-4930108580005665008L, -4000687142751896157L, 1109058304471526390L}).toString())) {
            str3 = jSONObject.optString(new ObfuscatedString(new long[]{-2629772198941473550L, -3320461702957526424L, -1312087233227319684L}).toString());
        } else {
            str3 = null;
        }
        if (jSONObject.has(new ObfuscatedString(new long[]{4595490126801880714L, -4086422358977044765L, 6414691219554377289L}).toString())) {
            str4 = jSONObject.optString(new ObfuscatedString(new long[]{-8175439297495704390L, 8599177242247730325L, 5512768063895052728L}).toString());
        }
        return new GoogleSignInOptions(3, (ArrayList<Scope>) arrayList, account, z, z2, z3, str3, str4, new HashMap(), (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<Integer, GoogleSignInOptionsExtensionParcelable> zam(@Nullable List<GoogleSignInOptionsExtensionParcelable> list) {
        HashMap hashMap = new HashMap();
        if (list == null) {
            return hashMap;
        }
        for (GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable : list) {
            hashMap.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.getType()), googleSignInOptionsExtensionParcelable);
        }
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0048, code lost:
    
        if (r1.equals(r4.getAccount()) != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.zao.size() <= 0 && googleSignInOptions.zao.size() <= 0 && this.zah.size() == googleSignInOptions.getScopes().size() && this.zah.containsAll(googleSignInOptions.getScopes())) {
                Account account = this.zai;
                if (account == null) {
                    if (googleSignInOptions.getAccount() == null) {
                    }
                }
                if (TextUtils.isEmpty(this.zam)) {
                    if (TextUtils.isEmpty(googleSignInOptions.getServerClientId())) {
                    }
                } else if (!this.zam.equals(googleSignInOptions.getServerClientId())) {
                }
                if (this.zal == googleSignInOptions.isForceCodeForRefreshToken() && this.zaj == googleSignInOptions.isIdTokenRequested() && this.zak == googleSignInOptions.isServerAuthCodeRequested()) {
                    if (TextUtils.equals(this.zap, googleSignInOptions.getLogSessionId())) {
                        return true;
                    }
                }
            }
        } catch (ClassCastException unused) {
        }
        return false;
    }

    @Nullable
    @KeepForSdk
    public Account getAccount() {
        return this.zai;
    }

    @NonNull
    @KeepForSdk
    public ArrayList<GoogleSignInOptionsExtensionParcelable> getExtensions() {
        return this.zao;
    }

    @Nullable
    @KeepForSdk
    public String getLogSessionId() {
        return this.zap;
    }

    @NonNull
    public Scope[] getScopeArray() {
        ArrayList<Scope> arrayList = this.zah;
        return (Scope[]) arrayList.toArray(new Scope[arrayList.size()]);
    }

    @NonNull
    @KeepForSdk
    public ArrayList<Scope> getScopes() {
        return new ArrayList<>(this.zah);
    }

    @Nullable
    @KeepForSdk
    public String getServerClientId() {
        return this.zam;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList<Scope> arrayList2 = this.zah;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(arrayList2.get(i).getScopeUri());
        }
        Collections.sort(arrayList);
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.addObject(arrayList);
        hashAccumulator.addObject(this.zai);
        hashAccumulator.addObject(this.zam);
        hashAccumulator.zaa(this.zal);
        hashAccumulator.zaa(this.zaj);
        hashAccumulator.zaa(this.zak);
        hashAccumulator.addObject(this.zap);
        return hashAccumulator.hash();
    }

    @KeepForSdk
    public boolean isForceCodeForRefreshToken() {
        return this.zal;
    }

    @KeepForSdk
    public boolean isIdTokenRequested() {
        return this.zaj;
    }

    @KeepForSdk
    public boolean isServerAuthCodeRequested() {
        return this.zak;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaf);
        SafeParcelWriter.writeTypedList(parcel, 2, getScopes(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, getAccount(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 4, isIdTokenRequested());
        SafeParcelWriter.writeBoolean(parcel, 5, isServerAuthCodeRequested());
        SafeParcelWriter.writeBoolean(parcel, 6, isForceCodeForRefreshToken());
        SafeParcelWriter.writeString(parcel, 7, getServerClientId(), false);
        SafeParcelWriter.writeString(parcel, 8, this.zan, false);
        SafeParcelWriter.writeTypedList(parcel, 9, getExtensions(), false);
        SafeParcelWriter.writeString(parcel, 10, getLogSessionId(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @NonNull
    public final String zaf() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.zah, zag);
            Iterator<Scope> it = this.zah.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().getScopeUri());
            }
            jSONObject.put(new ObfuscatedString(new long[]{5268064666729041177L, -208393039569486238L}).toString(), jSONArray);
            Account account = this.zai;
            if (account != null) {
                jSONObject.put(new ObfuscatedString(new long[]{87319351664418711L, 2246979863617453025L, 4033850480758127628L}).toString(), account.name);
            }
            jSONObject.put(new ObfuscatedString(new long[]{5801932566103105105L, 2899476242597713932L, 3539857068013598922L}).toString(), this.zaj);
            jSONObject.put(new ObfuscatedString(new long[]{1471846425038874298L, 7810989816094307518L, 5990686221880371135L, -304710159088195069L}).toString(), this.zal);
            jSONObject.put(new ObfuscatedString(new long[]{1612325850949389195L, -1721142656252561026L, -1957932572519624720L, 1037665407517596854L}).toString(), this.zak);
            if (!TextUtils.isEmpty(this.zam)) {
                jSONObject.put(new ObfuscatedString(new long[]{-5950115428234568542L, -1394957759506023788L, -6001421515354299387L}).toString(), this.zam);
            }
            if (!TextUtils.isEmpty(this.zan)) {
                jSONObject.put(new ObfuscatedString(new long[]{4233323772293238642L, 2511244497862892619L, 7056934215155609486L}).toString(), this.zan);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    @SafeParcelable.Constructor
    public GoogleSignInOptions(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ArrayList<Scope> arrayList, @Nullable @SafeParcelable.Param(id = 3) Account account, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) boolean z3, @Nullable @SafeParcelable.Param(id = 7) String str, @Nullable @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) ArrayList<GoogleSignInOptionsExtensionParcelable> arrayList2, @Nullable @SafeParcelable.Param(id = 10) String str3) {
        this(i, arrayList, account, z, z2, z3, str, str2, zam(arrayList2), str3);
    }

    private GoogleSignInOptions(int i, ArrayList<Scope> arrayList, @Nullable Account account, boolean z, boolean z2, boolean z3, @Nullable String str, @Nullable String str2, Map<Integer, GoogleSignInOptionsExtensionParcelable> map, @Nullable String str3) {
        this.zaf = i;
        this.zah = arrayList;
        this.zai = account;
        this.zaj = z;
        this.zak = z2;
        this.zal = z3;
        this.zam = str;
        this.zan = str2;
        this.zao = new ArrayList<>(map.values());
        this.zaq = map;
        this.zap = str3;
    }
}

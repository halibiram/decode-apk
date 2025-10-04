package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CheckReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;

@CheckReturnValue
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class Scheme {
    private int background;
    private int error;
    private int errorContainer;
    private int inverseOnSurface;
    private int inversePrimary;
    private int inverseSurface;
    private int onBackground;
    private int onError;
    private int onErrorContainer;
    private int onPrimary;
    private int onPrimaryContainer;
    private int onSecondary;
    private int onSecondaryContainer;
    private int onSurface;
    private int onSurfaceVariant;
    private int onTertiary;
    private int onTertiaryContainer;
    private int outline;
    private int outlineVariant;
    private int primary;
    private int primaryContainer;
    private int scrim;
    private int secondary;
    private int secondaryContainer;
    private int shadow;
    private int surface;
    private int surfaceVariant;
    private int tertiary;
    private int tertiaryContainer;

    public Scheme() {
    }

    public static Scheme dark(int i) {
        return darkFromCorePalette(CorePalette.of(i));
    }

    public static Scheme darkContent(int i) {
        return darkFromCorePalette(CorePalette.contentOf(i));
    }

    private static Scheme darkFromCorePalette(CorePalette corePalette) {
        return new Scheme().withPrimary(corePalette.a1.tone(80)).withOnPrimary(corePalette.a1.tone(20)).withPrimaryContainer(corePalette.a1.tone(30)).withOnPrimaryContainer(corePalette.a1.tone(90)).withSecondary(corePalette.a2.tone(80)).withOnSecondary(corePalette.a2.tone(20)).withSecondaryContainer(corePalette.a2.tone(30)).withOnSecondaryContainer(corePalette.a2.tone(90)).withTertiary(corePalette.a3.tone(80)).withOnTertiary(corePalette.a3.tone(20)).withTertiaryContainer(corePalette.a3.tone(30)).withOnTertiaryContainer(corePalette.a3.tone(90)).withError(corePalette.error.tone(80)).withOnError(corePalette.error.tone(20)).withErrorContainer(corePalette.error.tone(30)).withOnErrorContainer(corePalette.error.tone(80)).withBackground(corePalette.n1.tone(10)).withOnBackground(corePalette.n1.tone(90)).withSurface(corePalette.n1.tone(10)).withOnSurface(corePalette.n1.tone(90)).withSurfaceVariant(corePalette.n2.tone(30)).withOnSurfaceVariant(corePalette.n2.tone(80)).withOutline(corePalette.n2.tone(60)).withOutlineVariant(corePalette.n2.tone(30)).withShadow(corePalette.n1.tone(0)).withScrim(corePalette.n1.tone(0)).withInverseSurface(corePalette.n1.tone(90)).withInverseOnSurface(corePalette.n1.tone(20)).withInversePrimary(corePalette.a1.tone(40));
    }

    public static Scheme light(int i) {
        return lightFromCorePalette(CorePalette.of(i));
    }

    public static Scheme lightContent(int i) {
        return lightFromCorePalette(CorePalette.contentOf(i));
    }

    private static Scheme lightFromCorePalette(CorePalette corePalette) {
        return new Scheme().withPrimary(corePalette.a1.tone(40)).withOnPrimary(corePalette.a1.tone(100)).withPrimaryContainer(corePalette.a1.tone(90)).withOnPrimaryContainer(corePalette.a1.tone(10)).withSecondary(corePalette.a2.tone(40)).withOnSecondary(corePalette.a2.tone(100)).withSecondaryContainer(corePalette.a2.tone(90)).withOnSecondaryContainer(corePalette.a2.tone(10)).withTertiary(corePalette.a3.tone(40)).withOnTertiary(corePalette.a3.tone(100)).withTertiaryContainer(corePalette.a3.tone(90)).withOnTertiaryContainer(corePalette.a3.tone(10)).withError(corePalette.error.tone(40)).withOnError(corePalette.error.tone(100)).withErrorContainer(corePalette.error.tone(90)).withOnErrorContainer(corePalette.error.tone(10)).withBackground(corePalette.n1.tone(99)).withOnBackground(corePalette.n1.tone(10)).withSurface(corePalette.n1.tone(99)).withOnSurface(corePalette.n1.tone(10)).withSurfaceVariant(corePalette.n2.tone(90)).withOnSurfaceVariant(corePalette.n2.tone(30)).withOutline(corePalette.n2.tone(50)).withOutlineVariant(corePalette.n2.tone(80)).withShadow(corePalette.n1.tone(0)).withScrim(corePalette.n1.tone(0)).withInverseSurface(corePalette.n1.tone(20)).withInverseOnSurface(corePalette.n1.tone(95)).withInversePrimary(corePalette.a1.tone(80));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scheme) || !super.equals(obj)) {
            return false;
        }
        Scheme scheme = (Scheme) obj;
        if (this.primary == scheme.primary && this.onPrimary == scheme.onPrimary && this.primaryContainer == scheme.primaryContainer && this.onPrimaryContainer == scheme.onPrimaryContainer && this.secondary == scheme.secondary && this.onSecondary == scheme.onSecondary && this.secondaryContainer == scheme.secondaryContainer && this.onSecondaryContainer == scheme.onSecondaryContainer && this.tertiary == scheme.tertiary && this.onTertiary == scheme.onTertiary && this.tertiaryContainer == scheme.tertiaryContainer && this.onTertiaryContainer == scheme.onTertiaryContainer && this.error == scheme.error && this.onError == scheme.onError && this.errorContainer == scheme.errorContainer && this.onErrorContainer == scheme.onErrorContainer && this.background == scheme.background && this.onBackground == scheme.onBackground && this.surface == scheme.surface && this.onSurface == scheme.onSurface && this.surfaceVariant == scheme.surfaceVariant && this.onSurfaceVariant == scheme.onSurfaceVariant && this.outline == scheme.outline && this.outlineVariant == scheme.outlineVariant && this.shadow == scheme.shadow && this.scrim == scheme.scrim && this.inverseSurface == scheme.inverseSurface && this.inverseOnSurface == scheme.inverseOnSurface && this.inversePrimary == scheme.inversePrimary) {
            return true;
        }
        return false;
    }

    public int getBackground() {
        return this.background;
    }

    public int getError() {
        return this.error;
    }

    public int getErrorContainer() {
        return this.errorContainer;
    }

    public int getInverseOnSurface() {
        return this.inverseOnSurface;
    }

    public int getInversePrimary() {
        return this.inversePrimary;
    }

    public int getInverseSurface() {
        return this.inverseSurface;
    }

    public int getOnBackground() {
        return this.onBackground;
    }

    public int getOnError() {
        return this.onError;
    }

    public int getOnErrorContainer() {
        return this.onErrorContainer;
    }

    public int getOnPrimary() {
        return this.onPrimary;
    }

    public int getOnPrimaryContainer() {
        return this.onPrimaryContainer;
    }

    public int getOnSecondary() {
        return this.onSecondary;
    }

    public int getOnSecondaryContainer() {
        return this.onSecondaryContainer;
    }

    public int getOnSurface() {
        return this.onSurface;
    }

    public int getOnSurfaceVariant() {
        return this.onSurfaceVariant;
    }

    public int getOnTertiary() {
        return this.onTertiary;
    }

    public int getOnTertiaryContainer() {
        return this.onTertiaryContainer;
    }

    public int getOutline() {
        return this.outline;
    }

    public int getOutlineVariant() {
        return this.outlineVariant;
    }

    public int getPrimary() {
        return this.primary;
    }

    public int getPrimaryContainer() {
        return this.primaryContainer;
    }

    public int getScrim() {
        return this.scrim;
    }

    public int getSecondary() {
        return this.secondary;
    }

    public int getSecondaryContainer() {
        return this.secondaryContainer;
    }

    public int getShadow() {
        return this.shadow;
    }

    public int getSurface() {
        return this.surface;
    }

    public int getSurfaceVariant() {
        return this.surfaceVariant;
    }

    public int getTertiary() {
        return this.tertiary;
    }

    public int getTertiaryContainer() {
        return this.tertiaryContainer;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.primary) * 31) + this.onPrimary) * 31) + this.primaryContainer) * 31) + this.onPrimaryContainer) * 31) + this.secondary) * 31) + this.onSecondary) * 31) + this.secondaryContainer) * 31) + this.onSecondaryContainer) * 31) + this.tertiary) * 31) + this.onTertiary) * 31) + this.tertiaryContainer) * 31) + this.onTertiaryContainer) * 31) + this.error) * 31) + this.onError) * 31) + this.errorContainer) * 31) + this.onErrorContainer) * 31) + this.background) * 31) + this.onBackground) * 31) + this.surface) * 31) + this.onSurface) * 31) + this.surfaceVariant) * 31) + this.onSurfaceVariant) * 31) + this.outline) * 31) + this.outlineVariant) * 31) + this.shadow) * 31) + this.scrim) * 31) + this.inverseSurface) * 31) + this.inverseOnSurface) * 31) + this.inversePrimary;
    }

    public void setBackground(int i) {
        this.background = i;
    }

    public void setError(int i) {
        this.error = i;
    }

    public void setErrorContainer(int i) {
        this.errorContainer = i;
    }

    public void setInverseOnSurface(int i) {
        this.inverseOnSurface = i;
    }

    public void setInversePrimary(int i) {
        this.inversePrimary = i;
    }

    public void setInverseSurface(int i) {
        this.inverseSurface = i;
    }

    public void setOnBackground(int i) {
        this.onBackground = i;
    }

    public void setOnError(int i) {
        this.onError = i;
    }

    public void setOnErrorContainer(int i) {
        this.onErrorContainer = i;
    }

    public void setOnPrimary(int i) {
        this.onPrimary = i;
    }

    public void setOnPrimaryContainer(int i) {
        this.onPrimaryContainer = i;
    }

    public void setOnSecondary(int i) {
        this.onSecondary = i;
    }

    public void setOnSecondaryContainer(int i) {
        this.onSecondaryContainer = i;
    }

    public void setOnSurface(int i) {
        this.onSurface = i;
    }

    public void setOnSurfaceVariant(int i) {
        this.onSurfaceVariant = i;
    }

    public void setOnTertiary(int i) {
        this.onTertiary = i;
    }

    public void setOnTertiaryContainer(int i) {
        this.onTertiaryContainer = i;
    }

    public void setOutline(int i) {
        this.outline = i;
    }

    public void setOutlineVariant(int i) {
        this.outlineVariant = i;
    }

    public void setPrimary(int i) {
        this.primary = i;
    }

    public void setPrimaryContainer(int i) {
        this.primaryContainer = i;
    }

    public void setScrim(int i) {
        this.scrim = i;
    }

    public void setSecondary(int i) {
        this.secondary = i;
    }

    public void setSecondaryContainer(int i) {
        this.secondaryContainer = i;
    }

    public void setShadow(int i) {
        this.shadow = i;
    }

    public void setSurface(int i) {
        this.surface = i;
    }

    public void setSurfaceVariant(int i) {
        this.surfaceVariant = i;
    }

    public void setTertiary(int i) {
        this.tertiary = i;
    }

    public void setTertiaryContainer(int i) {
        this.tertiaryContainer = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{8616501658948674847L, -3745870523033886460L, 3805317282605546162L}).toString());
        sb.append(this.primary);
        sb.append(new ObfuscatedString(new long[]{4963264540976834371L, -1641134640778715219L, 1638203276140066897L}).toString());
        sb.append(this.onPrimary);
        sb.append(new ObfuscatedString(new long[]{-8950908549908518173L, 8301817900645157729L, -4858430681209546216L, -2139847763199268626L}).toString());
        sb.append(this.primaryContainer);
        sb.append(new ObfuscatedString(new long[]{8606918021181276380L, -7024846740635059614L, 2410669914013514675L, 7971471424717564900L}).toString());
        sb.append(this.onPrimaryContainer);
        sb.append(new ObfuscatedString(new long[]{5717289899061959496L, -291660027146483382L, -8925412502304594649L}).toString());
        sb.append(this.secondary);
        sb.append(new ObfuscatedString(new long[]{-977513349535752993L, 8968129014602172095L, 1567236451781469799L}).toString());
        sb.append(this.onSecondary);
        sb.append(new ObfuscatedString(new long[]{2238720656767282674L, -8152882037422731700L, -4632343490044094018L, -2756239083422985479L}).toString());
        sb.append(this.secondaryContainer);
        sb.append(new ObfuscatedString(new long[]{-5776693722042094878L, 7565218493666387725L, -1014378261088049093L, -1937847181274280603L}).toString());
        sb.append(this.onSecondaryContainer);
        sb.append(new ObfuscatedString(new long[]{1195090157656661162L, -4904792776076738111L, 6694376864452035738L}).toString());
        sb.append(this.tertiary);
        sb.append(new ObfuscatedString(new long[]{1575750027453034587L, -1978667199704165297L, -8575973429519914921L}).toString());
        sb.append(this.onTertiary);
        sb.append(new ObfuscatedString(new long[]{-6841531714710721283L, -8775175817797986357L, -4648460687893070992L, -4898537358447203136L}).toString());
        sb.append(this.tertiaryContainer);
        sb.append(new ObfuscatedString(new long[]{-1454588106177237601L, 8819942658658688629L, -5260102847266025904L, 6330617012802307898L}).toString());
        sb.append(this.onTertiaryContainer);
        sb.append(new ObfuscatedString(new long[]{8053947836881120203L, 5179565664120922253L}).toString());
        sb.append(this.error);
        sb.append(new ObfuscatedString(new long[]{7066529723309771143L, 6091904499917523963L, -1519706252812937328L}).toString());
        sb.append(this.onError);
        sb.append(new ObfuscatedString(new long[]{-5386273822909555696L, -7564912354043787858L, 5133431473703843889L, -7335690028694486455L}).toString());
        sb.append(this.errorContainer);
        sb.append(new ObfuscatedString(new long[]{-3412508378067151069L, -8797671625127968698L, 9175275163979140305L, -2470443878319485354L}).toString());
        sb.append(this.onErrorContainer);
        sb.append(new ObfuscatedString(new long[]{8049704082021881793L, -7020407167105999418L, -2205461649899814325L}).toString());
        sb.append(this.background);
        sb.append(new ObfuscatedString(new long[]{4334982248100099743L, -8940135548387727029L, -2819230288729678294L}).toString());
        sb.append(this.onBackground);
        sb.append(new ObfuscatedString(new long[]{-5877501925061657880L, -4658002475218772919L, 1645063140236331055L}).toString());
        sb.append(this.surface);
        sb.append(new ObfuscatedString(new long[]{7956007449681823684L, 2368077104904742235L, -1236195701291368817L}).toString());
        sb.append(this.onSurface);
        sb.append(new ObfuscatedString(new long[]{735510447195409055L, -2663196704726786356L, 1426046888953283233L, 3849051256632944331L}).toString());
        sb.append(this.surfaceVariant);
        sb.append(new ObfuscatedString(new long[]{-5278168717120424587L, -8577544105105834072L, 6239694389867269904L, -8442704498215878915L}).toString());
        sb.append(this.onSurfaceVariant);
        sb.append(new ObfuscatedString(new long[]{-8444194466926842105L, -3298479630021663821L, -886641862857394664L}).toString());
        sb.append(this.outline);
        sb.append(new ObfuscatedString(new long[]{4128739683907088819L, 1746670841098839492L, -2017921149375632668L, -5569123962141186815L}).toString());
        sb.append(this.outlineVariant);
        sb.append(new ObfuscatedString(new long[]{1668576107581935939L, 6388957361512435211L, 3125022345701188158L}).toString());
        sb.append(this.shadow);
        sb.append(new ObfuscatedString(new long[]{-2961711283756434422L, -8448092943735355317L}).toString());
        sb.append(this.scrim);
        sb.append(new ObfuscatedString(new long[]{6114082000465853408L, -8630672525040486450L, -4153841966147369301L, -5047440629418004460L}).toString());
        sb.append(this.inverseSurface);
        sb.append(new ObfuscatedString(new long[]{56197631952970879L, -3110492027163524003L, -3119721511038633071L, -1984032597931490081L}).toString());
        sb.append(this.inverseOnSurface);
        sb.append(new ObfuscatedString(new long[]{-5094023825954562031L, 117379749697676554L, 7387216731097231098L, -7701093295069709317L}).toString());
        return AbstractC0362x4440ab85.m2934x9d12c1f4(sb, this.inversePrimary, '}');
    }

    @CanIgnoreReturnValue
    public Scheme withBackground(int i) {
        this.background = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withError(int i) {
        this.error = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withErrorContainer(int i) {
        this.errorContainer = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withInverseOnSurface(int i) {
        this.inverseOnSurface = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withInversePrimary(int i) {
        this.inversePrimary = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withInverseSurface(int i) {
        this.inverseSurface = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnBackground(int i) {
        this.onBackground = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnError(int i) {
        this.onError = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnErrorContainer(int i) {
        this.onErrorContainer = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnPrimary(int i) {
        this.onPrimary = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnPrimaryContainer(int i) {
        this.onPrimaryContainer = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnSecondary(int i) {
        this.onSecondary = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnSecondaryContainer(int i) {
        this.onSecondaryContainer = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnSurface(int i) {
        this.onSurface = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnSurfaceVariant(int i) {
        this.onSurfaceVariant = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnTertiary(int i) {
        this.onTertiary = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOnTertiaryContainer(int i) {
        this.onTertiaryContainer = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOutline(int i) {
        this.outline = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withOutlineVariant(int i) {
        this.outlineVariant = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withPrimary(int i) {
        this.primary = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withPrimaryContainer(int i) {
        this.primaryContainer = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withScrim(int i) {
        this.scrim = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withSecondary(int i) {
        this.secondary = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withSecondaryContainer(int i) {
        this.secondaryContainer = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withShadow(int i) {
        this.shadow = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withSurface(int i) {
        this.surface = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withSurfaceVariant(int i) {
        this.surfaceVariant = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withTertiary(int i) {
        this.tertiary = i;
        return this;
    }

    @CanIgnoreReturnValue
    public Scheme withTertiaryContainer(int i) {
        this.tertiaryContainer = i;
        return this;
    }

    public Scheme(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27, int i28, int i29) {
        this.primary = i;
        this.onPrimary = i2;
        this.primaryContainer = i3;
        this.onPrimaryContainer = i4;
        this.secondary = i5;
        this.onSecondary = i6;
        this.secondaryContainer = i7;
        this.onSecondaryContainer = i8;
        this.tertiary = i9;
        this.onTertiary = i10;
        this.tertiaryContainer = i11;
        this.onTertiaryContainer = i12;
        this.error = i13;
        this.onError = i14;
        this.errorContainer = i15;
        this.onErrorContainer = i16;
        this.background = i17;
        this.onBackground = i18;
        this.surface = i19;
        this.onSurface = i20;
        this.surfaceVariant = i21;
        this.onSurfaceVariant = i22;
        this.outline = i23;
        this.outlineVariant = i24;
        this.shadow = i25;
        this.scrim = i26;
        this.inverseSurface = i27;
        this.inverseOnSurface = i28;
        this.inversePrimary = i29;
    }
}

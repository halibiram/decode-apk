package com.tknetwork.tunnel.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.activities.ExceptionActivity;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;

/* loaded from: classes3.dex */
public class ExceptionHandlerUtils implements Thread.UncaughtExceptionHandler {
    private final String LINE_SEPARATOR = new ObfuscatedString(new long[]{5967490826446157431L, 4062227355291753990L}).toString();
    private final Context myContext;

    public ExceptionHandlerUtils(Context context) {
        this.myContext = context;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        try {
            Intent intent = new Intent(this.myContext, (Class<?>) ExceptionActivity.class);
            intent.putExtra(new ObfuscatedString(new long[]{-1311757361260454450L, -3442397692530206037L}).toString(), new ObfuscatedString(new long[]{2535413494925110204L, 4032271963961992100L, -1373213372312478277L, -5918240802727564414L, -601459944437097103L, -1845600594366830226L, -3448576636388503164L}).toString() + stringWriter + new ObfuscatedString(new long[]{2263608777512726842L, -1847858008249800577L, -4170513354296221652L, -1688612648947125858L, -962151602684623119L, 1253128342321532627L, -5503415275567429366L}).toString() + new ObfuscatedString(new long[]{-4227614021350826866L, 3810656747088005541L}).toString() + Build.BRAND + new ObfuscatedString(new long[]{2725176215280722169L, -606523631129154196L}).toString() + new ObfuscatedString(new long[]{8299682837360520516L, 4563413213669221627L}).toString() + Build.DEVICE + new ObfuscatedString(new long[]{-7329547355174162081L, -3636820525911593345L}).toString() + new ObfuscatedString(new long[]{1352916477598723969L, 4418031657799070789L}).toString() + Build.MODEL + new ObfuscatedString(new long[]{-2312252579543144047L, 2934656316352666913L}).toString() + new ObfuscatedString(new long[]{-1796510686368783900L, 8055981277278366012L}).toString() + Build.ID + new ObfuscatedString(new long[]{-8886928390125792480L, 4294274827373480705L}).toString() + new ObfuscatedString(new long[]{-2005204293546063509L, 7994675579292149080L, -7672252230464687568L}).toString() + Build.PRODUCT + new ObfuscatedString(new long[]{4790548731718874918L, -7790579662579421229L}).toString() + new ObfuscatedString(new long[]{544172849850828317L, -8078522911151022449L, -3460095078944754824L, 3696029819639671596L, 2008742968998357988L, -3089993390770459136L}).toString() + new ObfuscatedString(new long[]{5261747569774032058L, 2960621665845224070L}).toString() + Build.VERSION.SDK + new ObfuscatedString(new long[]{1877217623264704911L, -413813021883655975L}).toString() + new ObfuscatedString(new long[]{5456761091156323475L, -5590254792774624277L, 8186953323924587837L}).toString() + Build.VERSION.RELEASE + new ObfuscatedString(new long[]{6564568601274515269L, 5615678934362721224L}).toString() + new ObfuscatedString(new long[]{-1246801139747950563L, -218698937335482795L, 3469546749436674287L}).toString() + Build.VERSION.INCREMENTAL + new ObfuscatedString(new long[]{-7703082741972068781L, 7059234569434880324L}).toString() + new ObfuscatedString(new long[]{-4957222479579211253L, 746843423529600683L, 2539953696191228843L, -9125665273429025531L, 5193814500881863223L, -4652807411509065447L, 7452760068191763246L, -1360151761840070380L, -6922117924376071702L, 8315313673209047015L}).toString() + new ObfuscatedString(new long[]{-5681681913327413341L, 8352799904527733271L}).toString());
            intent.addFlags(268435456);
            intent.addFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
            this.myContext.startActivity(intent);
        } catch (Throwable th2) {
            throw new NoClassDefFoundError(th2.getMessage());
        }
    }
}

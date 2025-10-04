package com.google.android.gms.tasks;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public abstract class Task<TResult> {
    @NonNull
    public Task<TResult> addOnCanceledListener(@NonNull Activity activity, @NonNull OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{5434849643042240541L, 5906721871655655623L, -1124128622412260723L, 7036135092015676728L, -2010242734424805582L, -1678928646792903425L, -1109120179759835119L}).toString());
    }

    @NonNull
    public Task<TResult> addOnCompleteListener(@NonNull Activity activity, @NonNull OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{959553838278122612L, -5983683085714796438L, 7831259728572995042L, 4630094815856956512L, 4379896217147554895L, -4925515458524675985L}).toString());
    }

    @NonNull
    public abstract Task<TResult> addOnFailureListener(@NonNull Activity activity, @NonNull OnFailureListener onFailureListener);

    @NonNull
    public abstract Task<TResult> addOnFailureListener(@NonNull OnFailureListener onFailureListener);

    @NonNull
    public abstract Task<TResult> addOnFailureListener(@NonNull Executor executor, @NonNull OnFailureListener onFailureListener);

    @NonNull
    public abstract Task<TResult> addOnSuccessListener(@NonNull Activity activity, @NonNull OnSuccessListener<? super TResult> onSuccessListener);

    @NonNull
    public abstract Task<TResult> addOnSuccessListener(@NonNull OnSuccessListener<? super TResult> onSuccessListener);

    @NonNull
    public abstract Task<TResult> addOnSuccessListener(@NonNull Executor executor, @NonNull OnSuccessListener<? super TResult> onSuccessListener);

    @NonNull
    public <TContinuationResult> Task<TContinuationResult> continueWith(@NonNull Continuation<TResult, TContinuationResult> continuation) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-4705742188999311353L, -3759225120889072985L, -2301921604086588217L, -2846035119746368466L, -1495960980496014716L}).toString());
    }

    @NonNull
    public <TContinuationResult> Task<TContinuationResult> continueWithTask(@NonNull Continuation<TResult, Task<TContinuationResult>> continuation) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{3475049973131176105L, -2065151518396602926L, 6376495896001037117L, 5563219008911224614L, -3980053526344902561L, -7195242727662393313L}).toString());
    }

    @Nullable
    public abstract Exception getException();

    public abstract TResult getResult();

    public abstract <X extends Throwable> TResult getResult(@NonNull Class<X> cls);

    public abstract boolean isCanceled();

    public abstract boolean isComplete();

    public abstract boolean isSuccessful();

    @NonNull
    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(@NonNull SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{9184477565822359597L, -3716947311132646756L, -6341095341832895197L, 6729590194781778110L, 8868803038871839670L}).toString());
    }

    @NonNull
    public Task<TResult> addOnCanceledListener(@NonNull OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-6709137424774252337L, -454247942206763739L, 2876911360665266777L, 7009791764361078259L, -2121451545999441591L, 8851625482398007121L, 5333618282127615580L}).toString());
    }

    @NonNull
    public Task<TResult> addOnCompleteListener(@NonNull OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{1172998622915030448L, -8812240204338752055L, -426248693263329436L, 1476340364242783161L, 958002530299947311L, -5189054373980177828L}).toString());
    }

    @NonNull
    public <TContinuationResult> Task<TContinuationResult> continueWith(@NonNull Executor executor, @NonNull Continuation<TResult, TContinuationResult> continuation) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{5738811504727431092L, -7272284417861547368L, 7092476125250312047L, 6746313869966562686L, 766804880021498177L}).toString());
    }

    @NonNull
    public <TContinuationResult> Task<TContinuationResult> continueWithTask(@NonNull Executor executor, @NonNull Continuation<TResult, Task<TContinuationResult>> continuation) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-5462447999097934763L, -5597108675037076022L, -4331646320049796854L, 4065762407233835934L, 7411106864185060603L, -2253044543334717621L}).toString());
    }

    @NonNull
    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(@NonNull Executor executor, @NonNull SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{1027515853049408124L, 4299702217628457207L, 5136990383304358888L, 3007165414268187245L, -6138546351430118433L}).toString());
    }

    @NonNull
    public Task<TResult> addOnCanceledListener(@NonNull Executor executor, @NonNull OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{8850849756644186403L, -931393467491308411L, 5664036374619064571L, -266053874951308037L, -8771238241113694688L, -2152352865023714694L}).toString());
    }

    @NonNull
    public Task<TResult> addOnCompleteListener(@NonNull Executor executor, @NonNull OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{6106010884481266375L, 3969795277049863294L, 5661063924578492765L, 7334995089864023387L, -7004923251931090771L, -4005553351417398906L}).toString());
    }
}

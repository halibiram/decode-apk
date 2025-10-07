package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zacp<R extends Result> extends PendingResult<R> {
    private final Status zaa;

    public zacp(Status status) {
        Preconditions.checkNotNull(status, new ObfuscatedString(new long[]{-9007904517773728583L, -543737820224128545L, -5876356933782232033L, -4699134569331030038L}).toString());
        Preconditions.checkArgument(!status.isSuccess(), new ObfuscatedString(new long[]{2041012719257243980L, -2757209683646104077L, 5016107056275904307L, 7886674545172976960L, 6923389540535505570L}).toString());
        this.zaa = status;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void addStatusListener(@NonNull PendingResult.StatusListener statusListener) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{1791763368647988004L, 1671049972270585274L, -1640641758554195989L, -5255210585449745400L, -7911049575439850766L, 1503079338845300367L, -7179587290069989312L, 2357455550963775688L, -2721490226345562983L, 1891177569069497070L, -4165832840719017949L, -5343871701871151840L, 3563102683695662709L}).toString());
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @NonNull
    public final R await() {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-603297319394866093L, 5780187878272476449L, 6997270956655017245L, 4049477509555244690L, 993072187025598906L, -5867030983202565506L, -5256483326210299057L, 2537394932629031600L, -7749532997521929354L, -4101948162055775589L, 9174666854401540892L, 8060339418451223846L, -651979122408863138L}).toString());
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void cancel() {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{2992943106238642195L, 4745297525131762002L, -1316604400639345169L, -1008511863851705703L, -6022656872230153016L, 5913573295996171449L, -2471159506770730190L, 2930036677182068384L, 1327561908024649189L, 982518394182225746L, -7002004174924126712L, -2487070485185714377L, -3587369665086811865L}).toString());
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final boolean isCanceled() {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-8348344849319070937L, 804849618391001849L, 2721844233786204585L, 5704675061278817637L, 6445777284079282292L, 3717661029548099362L, 3163281625085899861L, 2383232124722302294L, 5920401148948968137L, -7299554016977339621L, 29410490855921044L, -9001337610698534125L, 1380219880945505557L}).toString());
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(@NonNull ResultCallback<? super R> resultCallback) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-2185675754437448033L, -7970302194648161182L, -372626253138906885L, 7684653474907302563L, -6607336476209646947L, -5561012613920136846L, 5159583251897732668L, -8406013039128594462L, -3745406587995904066L, 155618387616199074L, -1437462606299857901L, 519336918046847587L, 2040209173701291229L}).toString());
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @NonNull
    @ShowFirstParty
    public final <S extends Result> TransformedResult<S> then(@NonNull ResultTransform<? super R, ? extends S> resultTransform) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{1350698361808634673L, -3548886258567464042L, -4176289262028418608L, -7538807405694645051L, 9084719455423430397L, 1142010026575688234L, 6841207088195560204L, 8625420817539081999L, -2481326703312100051L, 1054042990671037223L, -1786377079539004767L, 6442718901889004434L, -3373806337561472956L}).toString());
    }

    @NonNull
    public final Status zaa() {
        return this.zaa;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    @NonNull
    public final R await(long j, @NonNull TimeUnit timeUnit) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{8416782418261455855L, -6260582640753518803L, 4209210652782971378L, 5077274240364676551L, 1670890409854122205L, -5377265361018584117L, 7129598118904926872L, 7294686805201405325L, 2560488275916951621L, -6615954635053566977L, 5863160771695551270L, -4158124857580224910L, 2052605927139749486L}).toString());
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(@NonNull ResultCallback<? super R> resultCallback, long j, @NonNull TimeUnit timeUnit) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{6216774665158224109L, -8054030354547065933L, -1578651961675548796L, -6958636224706707221L, -1631221948339801610L, 4521691917144215937L, -6604217617806457070L, -4314997045719582933L, -4168310664925924632L, 8595726827340805984L, 3651837201898632321L, 5348528795873916392L, -2867568050143732159L}).toString());
    }
}

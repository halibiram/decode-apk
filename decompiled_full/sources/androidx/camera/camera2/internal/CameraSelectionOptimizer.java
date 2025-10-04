package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.InitializationException;
import androidx.camera.core.impl.CameraInfoInternal;
import coil3.disk.DiskLruCache;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class CameraSelectionOptimizer {
    private CameraSelectionOptimizer() {
    }

    private static String decideSkippedCameraIdByHeuristic(CameraManagerCompat cameraManagerCompat, Integer num, List<String> list) {
        if (num == null || !list.contains("0") || !list.contains(DiskLruCache.VERSION)) {
            return null;
        }
        if (num.intValue() == 1) {
            if (((Integer) cameraManagerCompat.getCameraCharacteristicsCompat("0").get(CameraCharacteristics.LENS_FACING)).intValue() != 1) {
                return null;
            }
            return DiskLruCache.VERSION;
        }
        if (num.intValue() != 0 || ((Integer) cameraManagerCompat.getCameraCharacteristicsCompat(DiskLruCache.VERSION).get(CameraCharacteristics.LENS_FACING)).intValue() != 0) {
            return null;
        }
        return "0";
    }

    public static List<String> getSelectedAvailableCameraIds(@NonNull Camera2CameraFactory camera2CameraFactory, @Nullable CameraSelector cameraSelector) {
        String str;
        try {
            ArrayList arrayList = new ArrayList();
            List<String> asList = Arrays.asList(camera2CameraFactory.getCameraManager().getCameraIdList());
            if (cameraSelector == null) {
                Iterator it = asList.iterator();
                while (it.hasNext()) {
                    arrayList.add((String) it.next());
                }
                return arrayList;
            }
            try {
                str = decideSkippedCameraIdByHeuristic(camera2CameraFactory.getCameraManager(), cameraSelector.getLensFacing(), asList);
            } catch (IllegalStateException unused) {
                str = null;
            }
            ArrayList arrayList2 = new ArrayList();
            for (String str2 : asList) {
                if (!str2.equals(str)) {
                    arrayList2.add(camera2CameraFactory.getCameraInfo(str2));
                }
            }
            Iterator<CameraInfo> it2 = cameraSelector.filter(arrayList2).iterator();
            while (it2.hasNext()) {
                arrayList.add(((CameraInfoInternal) it2.next()).getCameraId());
            }
            return arrayList;
        } catch (CameraAccessExceptionCompat e) {
            throw new InitializationException(CameraUnavailableExceptionHelper.createFrom(e));
        } catch (CameraUnavailableException e2) {
            throw new InitializationException(e2);
        }
    }
}

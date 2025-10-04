package com.google.zxing.pdf417.encoder;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.InputDeviceCompat;
import com.google.android.material.internal.ViewUtils;
import com.google.zxing.WriterException;
import com.google.zxing.pdf417.PDF417Common;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.utils.StatisticsGraphData;
import okhttp3.internal.http.HttpStatusCodesKt;

/* loaded from: classes3.dex */
final class PDF417ErrorCorrection {
    private static final int[][] EC_COEFFICIENTS = {new int[]{27, 917}, new int[]{522, 568, 723, 809}, new int[]{237, 308, 436, 284, 646, 653, HttpStatusCodesKt.HTTP_PRECONDITION_REQUIRED, 379}, new int[]{274, 562, 232, 755, 599, 524, 801, 132, 295, 116, 442, HttpStatusCodesKt.HTTP_PRECONDITION_REQUIRED, 295, 42, 176, 65}, new int[]{361, 575, 922, 525, 176, 586, 640, 321, 536, 742, 677, 742, 687, 284, 193, 517, 273, 494, 263, 147, 593, 800, 571, 320, 803, 133, 231, 390, 685, 330, 63, HttpStatusCodesKt.HTTP_GONE}, new int[]{539, 422, 6, 93, 862, 771, 453, 106, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 287, 107, 505, 733, 877, 381, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_ID, 723, 476, 462, 172, 430, TypedValues.MotionType.TYPE_POLAR_RELATIVETO, 858, 822, 543, 376, 511, HttpStatusCodesKt.HTTP_BAD_REQUEST, 672, 762, 283, 184, 440, 35, 519, 31, 460, 594, 225, 535, 517, 352, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 158, 651, 201, 488, 502, 648, 733, 717, 83, HttpStatusCodesKt.HTTP_NOT_FOUND, 97, 280, 771, 840, 629, 4, 381, 843, 623, 264, 543}, new int[]{521, 310, 864, 547, 858, 580, 296, 379, 53, 779, 897, 444, HttpStatusCodesKt.HTTP_BAD_REQUEST, 925, 749, HttpStatusCodesKt.HTTP_UNSUPPORTED_MEDIA_TYPE, 822, 93, 217, HttpStatusCodesKt.HTTP_ALREADY_REPORTED, PDF417Common.MAX_CODEWORDS_IN_BARCODE, 244, 583, 620, 246, 148, 447, 631, 292, 908, 490, TypedValues.TransitionType.TYPE_AUTO_TRANSITION, 516, 258, 457, 907, 594, 723, 674, 292, 272, 96, 684, 432, 686, TypedValues.MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO, 860, 569, 193, 219, 129, 186, 236, 287, 192, 775, 278, 173, 40, 379, 712, 463, 646, 776, 171, 491, 297, 763, 156, 732, 95, 270, 447, 90, 507, 48, 228, 821, 808, 898, 784, 663, 627, 378, 382, 262, 380, TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE, 754, 336, 89, 614, 87, 432, 670, 616, 157, 374, 242, 726, 600, 269, 375, 898, 845, 454, 354, 130, 814, 587, 804, 34, 211, 330, 539, 297, 827, 865, 37, 517, 834, 315, 550, 86, 801, 4, 108, 539}, new int[]{524, 894, 75, 766, 882, 857, 74, HttpStatusCodesKt.HTTP_NO_CONTENT, 82, 586, 708, 250, TypedValues.Custom.TYPE_DIMENSION, 786, 138, 720, 858, 194, 311, 913, 275, 190, 375, 850, 438, 733, 194, 280, 201, 280, 828, 757, 710, 814, 919, 89, 68, 569, 11, HttpStatusCodesKt.HTTP_NO_CONTENT, 796, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 540, 913, 801, TypedValues.TransitionType.TYPE_DURATION, 799, 137, 439, 418, 592, 668, 353, 859, 370, 694, 325, 240, 216, 257, 284, 549, 209, 884, 315, 70, 329, 793, 490, 274, 877, 162, 749, 812, 684, 461, 334, 376, 849, 521, 307, 291, 803, 712, 19, 358, 399, 908, 103, 511, 51, 8, 517, 225, 289, 470, 637, 731, 66, 255, 917, 269, 463, 830, 730, 433, 848, 585, 136, 538, TypedValues.Custom.TYPE_REFERENCE, 90, 2, 290, 743, 199, 655, TypedValues.Custom.TYPE_STRING, 329, 49, 802, 580, 355, 588, 188, 462, 10, 134, 628, 320, 479, 130, 739, 71, 263, TypedValues.AttributesType.TYPE_PIVOT_TARGET, 374, 601, 192, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 142, 673, 687, 234, 722, 384, 177, 752, TypedValues.MotionType.TYPE_PATHMOTION_ARC, 640, 455, 193, 689, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, 805, 641, 48, 60, 732, 621, 895, 544, 261, 852, 655, 309, 697, 755, 756, 60, 231, 773, 434, 421, 726, 528, 503, 118, 49, 795, 32, 144, 500, 238, 836, 394, 280, 566, 319, 9, 647, 550, 73, 914, 342, 126, 32, 681, 331, 792, 620, 60, TypedValues.MotionType.TYPE_POLAR_RELATIVETO, 441, 180, 791, 893, 754, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, 383, 228, 749, 760, 213, 54, 297, 134, 54, 834, 299, 922, 191, 910, 532, TypedValues.MotionType.TYPE_POLAR_RELATIVETO, 829, 189, 20, 167, 29, 872, 449, 83, 402, 41, 656, 505, 579, 481, 173, HttpStatusCodesKt.HTTP_NOT_FOUND, 251, 688, 95, 497, 555, 642, 543, 307, 159, 924, 558, 648, 55, 497, 10}, new int[]{352, 77, 373, 504, 35, 599, HttpStatusCodesKt.HTTP_PRECONDITION_REQUIRED, HttpStatusCodesKt.HTTP_MULTI_STATUS, HttpStatusCodesKt.HTTP_CONFLICT, 574, 118, 498, 285, 380, 350, 492, 197, 265, 920, 155, 914, 299, 229, 643, 294, 871, 306, 88, 87, 193, 352, 781, 846, 75, 327, 520, 435, 543, HttpStatusCodesKt.HTTP_NOT_AUTHORITATIVE, 666, 249, 346, 781, 621, 640, 268, 794, 534, 539, 781, HttpStatusCodesKt.HTTP_CLIENT_TIMEOUT, 390, 644, 102, 476, 499, 290, 632, 545, 37, 858, 916, 552, 41, 542, 289, 122, 272, 383, 800, 485, 98, 752, 472, 761, 107, 784, 860, 658, 741, 290, HttpStatusCodesKt.HTTP_NO_CONTENT, 681, HttpStatusCodesKt.HTTP_PROXY_AUTH, 855, 85, 99, 62, 482, 180, 20, 297, HttpStatusCodesKt.HTTP_UNAVAILABLE_FOR_LEGAL_REASONS, 593, 913, 142, 808, 684, 287, 536, 561, 76, 653, 899, 729, 567, 744, 390, InputDeviceCompat.SOURCE_DPAD, 192, 516, 258, 240, 518, 794, 395, ViewUtils.EDGE_TO_EDGE_FLAGS, 848, 51, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 384, 168, 190, 826, 328, 596, 786, 303, 570, 381, HttpStatusCodesKt.HTTP_UNSUPPORTED_MEDIA_TYPE, 641, 156, 237, 151, HttpStatusCodesKt.HTTP_TOO_MANY_REQUESTS, 531, HttpStatusCodesKt.HTTP_MULTI_STATUS, 676, 710, 89, 168, 304, 402, 40, 708, 575, 162, 864, 229, 65, 861, 841, 512, 164, 477, 221, 92, 358, 785, StatisticsGraphData.DataTransferStats.MAX_BUCKETS, 357, 850, 836, 827, 736, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, 94, 8, 494, 114, 521, 2, 499, 851, 543, 152, 729, 771, 95, 248, 361, 578, 323, 856, 797, 289, 51, 684, 466, 533, 820, 669, 45, TypedValues.Custom.TYPE_COLOR, 452, 167, 342, 244, 173, 35, 463, 651, 51, 699, 591, 452, 578, 37, 124, 298, 332, 552, 43, 427, 119, 662, 777, 475, 850, 764, 364, 578, 911, 283, 711, 472, 420, 245, StatisticsGraphData.DataTransferStats.MAX_BUCKETS, 594, 394, 511, 327, 589, 777, 699, 688, 43, HttpStatusCodesKt.HTTP_CLIENT_TIMEOUT, 842, 383, 721, 521, 560, 644, 714, 559, 62, 145, 873, 663, 713, 159, 672, 729, 624, 59, 193, HttpStatusCodesKt.HTTP_EXPECTATION_FAILED, 158, 209, 563, 564, 343, 693, 109, TypedValues.MotionType.TYPE_DRAW_PATH, 563, 365, 181, 772, 677, 310, 248, 353, 708, HttpStatusCodesKt.HTTP_GONE, 579, 870, 617, 841, 632, 860, 289, 536, 35, 777, 618, 586, 424, 833, 77, 597, 346, 269, 757, 632, 695, 751, 331, 247, 184, 45, 787, 680, 18, 66, HttpStatusCodesKt.HTTP_PROXY_AUTH, 369, 54, 492, 228, 613, 830, 922, 437, 519, 644, TypedValues.Custom.TYPE_DIMENSION, 789, 420, 305, 441, HttpStatusCodesKt.HTTP_MULTI_STATUS, 300, 892, 827, 141, 537, 381, 662, InputDeviceCompat.SOURCE_DPAD, 56, 252, 341, 242, 797, 838, 837, 720, 224, 307, 631, 61, 87, 560, 310, 756, 665, 397, 808, 851, 309, 473, 795, 378, 31, 647, 915, 459, 806, 590, 731, 425, 216, 548, 249, 321, 881, 699, 535, 673, 782, 210, 815, TypedValues.Custom.TYPE_DIMENSION, 303, 843, 922, 281, 73, 469, 791, 660, 162, 498, 308, 155, 422, 907, 817, 187, 62, 16, 425, 535, 336, 286, 437, 375, 273, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 296, 183, 923, 116, 667, 751, 353, 62, 366, 691, 379, 687, 842, 37, 357, 720, 742, 330, 5, 39, 923, 311, 424, 242, 749, 321, 54, 669, TypedValues.AttributesType.TYPE_PATH_ROTATE, 342, 299, 534, 105, 667, 488, 640, 672, 576, 540, TypedValues.AttributesType.TYPE_PATH_ROTATE, 486, 721, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 46, 656, 447, 171, 616, 464, 190, 531, 297, 321, 762, 752, 533, 175, 134, 14, 381, 433, 717, 45, 111, 20, 596, 284, 736, 138, 646, HttpStatusCodesKt.HTTP_LENGTH_REQUIRED, 877, 669, 141, 919, 45, 780, HttpStatusCodesKt.HTTP_PROXY_AUTH, 164, 332, 899, 165, 726, 600, 325, 498, 655, 357, 752, ViewUtils.EDGE_TO_EDGE_FLAGS, 223, 849, 647, 63, 310, 863, 251, 366, 304, 282, 738, 675, HttpStatusCodesKt.HTTP_GONE, 389, 244, 31, 121, 303, 263}};

    private PDF417ErrorCorrection() {
    }

    public static String generateErrorCorrection(CharSequence charSequence, int i) {
        int errorCorrectionCodewordCount = getErrorCorrectionCodewordCount(i);
        char[] cArr = new char[errorCorrectionCodewordCount];
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = errorCorrectionCodewordCount - 1;
            int charAt = (charSequence.charAt(i2) + cArr[i3]) % PDF417Common.NUMBER_OF_CODEWORDS;
            while (i3 >= 1) {
                cArr[i3] = (char) ((cArr[i3 - 1] + (929 - ((EC_COEFFICIENTS[i][i3] * charAt) % PDF417Common.NUMBER_OF_CODEWORDS))) % PDF417Common.NUMBER_OF_CODEWORDS);
                i3--;
            }
            cArr[0] = (char) ((929 - ((charAt * EC_COEFFICIENTS[i][0]) % PDF417Common.NUMBER_OF_CODEWORDS)) % PDF417Common.NUMBER_OF_CODEWORDS);
        }
        StringBuilder sb = new StringBuilder(errorCorrectionCodewordCount);
        for (int i4 = errorCorrectionCodewordCount - 1; i4 >= 0; i4--) {
            char c = cArr[i4];
            if (c != 0) {
                cArr[i4] = (char) (929 - c);
            }
            sb.append(cArr[i4]);
        }
        return sb.toString();
    }

    public static int getErrorCorrectionCodewordCount(int i) {
        if (i >= 0 && i <= 8) {
            return 1 << (i + 1);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6839157063014053683L, 1364183976139284951L, -7347050514568573900L, -5555217479422778893L, 4509655196006237518L, -3413283912649611113L, 1268284907020870726L}).toString());
    }

    public static int getRecommendedMinimumErrorCorrectionLevel(int i) {
        if (i > 0) {
            if (i <= 40) {
                return 2;
            }
            if (i <= 160) {
                return 3;
            }
            if (i <= 320) {
                return 4;
            }
            if (i <= 863) {
                return 5;
            }
            throw new WriterException(new ObfuscatedString(new long[]{8929398509809389801L, 1587493252701409346L, 4274065897906764171L, 661234874151231134L, 2839733786337032209L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3956605136879454177L, 6638475390383463061L, 5590827362379904330L}).toString());
    }
}

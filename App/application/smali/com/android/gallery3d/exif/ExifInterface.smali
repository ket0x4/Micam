.class public Lcom/android/gallery3d/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# static fields
.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field private static final TAG:Ljava/lang/String; = "com.android.gallery3d.exif.ExifInterface"

.field public static final TAG_ALGORITHM_COMMENT:I

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEPTH_MAP_BLUR_LEVEL:I

.field public static final TAG_DEPTH_MAP_DULCAMERA_WATER_MARK:I

.field public static final TAG_DEPTH_MAP_FOCUS_POINT:I

.field public static final TAG_DEPTH_MAP_TIME_WATER_MARK:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PARALLEL_PROCESS_COMMENT:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PORTRAIT_LIGHTING_PATTERN:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_XIAOMI_COMMENT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/android/gallery3d/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x100

    .line 81
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/16 v1, 0x101

    .line 83
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/16 v1, 0x102

    .line 85
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/16 v1, 0x103

    .line 87
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    const/16 v1, 0x106

    .line 89
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/16 v1, 0x10e

    .line 91
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/16 v1, 0x10f

    .line 93
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    const/16 v1, 0x110

    .line 95
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    const/16 v1, 0x111

    .line 97
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/16 v1, 0x112

    .line 99
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    const/16 v1, 0x115

    .line 101
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/16 v1, 0x116

    .line 103
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/16 v1, 0x117

    .line 105
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/16 v1, 0x11a

    .line 107
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/16 v1, 0x11b

    .line 109
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    const/16 v1, 0x11c

    .line 111
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/16 v1, 0x128

    .line 113
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/16 v1, 0x12d

    .line 115
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/16 v1, 0x131

    .line 117
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    const/16 v1, 0x132

    .line 119
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    const/16 v1, 0x13b

    .line 121
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    const/16 v1, 0x13e

    .line 123
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    const/16 v1, 0x13f

    .line 125
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/16 v1, 0x211

    .line 127
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/16 v1, 0x212

    .line 129
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/16 v1, 0x213

    .line 131
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/16 v1, 0x214

    .line 133
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/16 v1, -0x7d68

    .line 135
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    const/16 v1, -0x7897

    .line 137
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/16 v1, -0x77db

    .line 139
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    const/4 v1, 0x1

    const/16 v2, 0x201

    .line 142
    invoke-static {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/16 v2, 0x202

    .line 144
    invoke-static {v1, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/4 v2, 0x2

    const/16 v3, -0x7d66

    .line 147
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/16 v3, -0x7d63

    .line 149
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    const/16 v3, -0x77de

    .line 151
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/16 v3, -0x77dc

    .line 153
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/16 v3, -0x77d9

    .line 155
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/16 v3, -0x77d8

    .line 157
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_OECF:I

    const/16 v3, -0x7000

    .line 159
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/16 v3, -0x6ffd

    .line 161
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/16 v3, -0x6ffc

    .line 163
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/16 v3, -0x6eff

    .line 165
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/16 v3, -0x6efe

    .line 167
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/16 v3, -0x6dff

    .line 169
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/16 v3, -0x6dfe

    .line 171
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const/16 v3, -0x6dfd

    .line 173
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/16 v3, -0x6dfc

    .line 175
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/16 v3, -0x6dfb

    .line 177
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/16 v3, -0x6dfa

    .line 179
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/16 v3, -0x6df9

    .line 181
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v3, -0x6df8

    .line 183
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/16 v3, -0x6df7

    .line 185
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    const/16 v3, -0x6df6

    .line 187
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/16 v3, -0x6dec

    .line 189
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    const/16 v3, -0x6d84

    .line 191
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    const/16 v3, -0x6d7a

    .line 193
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/16 v3, -0x6d70

    .line 195
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/16 v3, -0x6d6f

    .line 197
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/16 v3, -0x6d6e

    .line 199
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/16 v3, -0x6000

    .line 201
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/16 v3, -0x5fff

    .line 203
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/16 v3, -0x5ffe

    .line 205
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/16 v3, -0x5ffd

    .line 207
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/16 v3, -0x5ffc

    .line 209
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/16 v3, -0x5ffb

    .line 211
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/16 v3, -0x5df5

    .line 213
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    const/16 v3, -0x5df4

    .line 215
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/16 v3, -0x5df2

    .line 217
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/16 v3, -0x5df1

    .line 219
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/16 v3, -0x5df0

    .line 221
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/16 v3, -0x5dec

    .line 223
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/16 v3, -0x5deb

    .line 225
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/16 v3, -0x5de9

    .line 227
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    const/16 v3, -0x5d00

    .line 229
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const/16 v3, -0x5cff

    .line 231
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    const/16 v3, -0x5cfe

    .line 233
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    const/16 v3, -0x5bff

    .line 235
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/16 v3, -0x5bfe

    .line 237
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/16 v3, -0x5bfd

    .line 239
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v3, -0x5bfc

    .line 241
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/16 v3, -0x5bfb

    .line 243
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/16 v3, -0x5bfa

    .line 245
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/16 v3, -0x5bf9

    .line 247
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    const/16 v3, -0x5bf8

    .line 249
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    const/16 v3, -0x5bf7

    .line 251
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    const/16 v3, -0x5bf6

    .line 253
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    const/16 v3, -0x5bf5

    .line 255
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/16 v3, -0x5bf4

    .line 257
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/16 v3, -0x5be0

    .line 259
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/16 v3, -0x7778

    .line 261
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PARALLEL_PROCESS_COMMENT:I

    const/16 v3, -0x7777

    .line 263
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ALGORITHM_COMMENT:I

    const/16 v3, -0x7770

    .line 265
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_FOCUS_POINT:I

    const/16 v3, -0x776f

    .line 267
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_BLUR_LEVEL:I

    const/16 v3, -0x776e

    .line 269
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_DULCAMERA_WATER_MARK:I

    const/16 v3, -0x776d

    .line 271
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_TIME_WATER_MARK:I

    const/16 v3, -0x776c

    .line 273
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PORTRAIT_LIGHTING_PATTERN:I

    const/16 v3, -0x6667

    .line 275
    invoke-static {v2, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    const/4 v3, 0x4

    .line 278
    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 280
    invoke-static {v3, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 282
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/4 v0, 0x3

    .line 284
    invoke-static {v3, v0}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 286
    invoke-static {v3, v3}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/4 v2, 0x5

    .line 288
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/4 v2, 0x6

    .line 290
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/4 v2, 0x7

    .line 292
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/16 v2, 0x8

    .line 294
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/16 v2, 0x9

    .line 296
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    const/16 v2, 0xa

    .line 298
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/16 v2, 0xb

    .line 300
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    const/16 v2, 0xc

    .line 302
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/16 v2, 0xd

    .line 304
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    const/16 v2, 0xe

    .line 306
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/16 v2, 0xf

    .line 308
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    const/16 v2, 0x10

    .line 310
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/16 v2, 0x11

    .line 312
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/16 v2, 0x12

    .line 314
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/16 v2, 0x13

    .line 316
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/16 v2, 0x14

    .line 318
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/16 v2, 0x15

    .line 320
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    const/16 v2, 0x16

    .line 322
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    const/16 v2, 0x17

    .line 324
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/16 v2, 0x18

    .line 326
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/16 v2, 0x19

    .line 328
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/16 v2, 0x1a

    .line 330
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/16 v2, 0x1b

    .line 332
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/16 v2, 0x1c

    .line 334
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/16 v2, 0x1d

    .line 336
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/16 v2, 0x1e

    .line 338
    invoke-static {v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 341
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 347
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 349
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    .line 361
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 733
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/android/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    new-instance v0, Lcom/android/gallery3d/exif/ExifData;

    sget-object v1, Lcom/android/gallery3d/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    .line 2035
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 2036
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v0, "UTC"

    .line 2038
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/4 v1, 0x0

    .line 2157
    iput-object v1, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 736
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private addExifTag(ILjava/lang/Object;)Z
    .locals 0

    .line 1921
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1925
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    const/4 p0, 0x1

    return p0
.end method

.method public static addXiaomiComment([BLjava/lang/String;)[B
    .locals 5

    .line 2519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2521
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2523
    :try_start_0
    new-instance v3, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v3}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 2524
    invoke-virtual {v3, p0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 2525
    invoke-virtual {v3, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiComment(Ljava/lang/String;)Z

    .line 2526
    invoke-virtual {v3, p0, v2}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 2527
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 2528
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2530
    const-class v2, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2534
    :goto_0
    sget-object p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addXiaomiComment cost="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static defineTag(IS)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 2494
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 2498
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v1

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 2500
    array-length v4, p0

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p0, v5

    .line 2501
    aget v7, v1, v2

    if-ne v7, v6, :cond_1

    const/4 v4, 0x1

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_3
    return v0
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 1

    .line 1947
    rem-int/lit16 p0, p0, 0x168

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x168

    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/16 p0, 0x8

    return p0
.end method

.method public static getTrueIfd(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static getTrueTagKey(I)S
    .locals 0

    int-to-short p0, p0

    return p0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private initTagInfo()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 2175
    fill-array-data v2, :array_0

    .line 2178
    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    .line 2179
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v5, 0x20000

    or-int v6, v2, v5

    or-int/lit8 v7, v6, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2181
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v8, 0x40000

    or-int v9, v2, v8

    or-int/lit8 v10, v9, 0x1

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2183
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2185
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v11, 0x30000

    or-int v12, v2, v11

    or-int/lit8 v13, v12, 0x3

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2187
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPRESSION:I

    or-int/lit8 v13, v12, 0x1

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2189
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2191
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2193
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2195
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2197
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    or-int/lit8 v14, v12, 0x2

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2199
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2201
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v14, 0x50000

    or-int/2addr v2, v14

    or-int/lit8 v15, v2, 0x1

    invoke-virtual {v3, v4, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2203
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    invoke-virtual {v3, v4, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 2205
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2207
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/4 v13, 0x0

    or-int/2addr v9, v13

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2209
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    invoke-virtual {v3, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2211
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2213
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    or-int/lit16 v9, v12, 0x300

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2215
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_WHITE_POINT:I

    or-int/lit8 v9, v2, 0x2

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2217
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    or-int/lit8 v9, v2, 0x6

    invoke-virtual {v3, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2219
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/4 v12, 0x3

    or-int/2addr v2, v12

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2221
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    invoke-virtual {v2, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2223
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    or-int/lit8 v4, v6, 0x14

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2225
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2227
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2229
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2231
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SOFTWARE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2233
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2235
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COPYRIGHT:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2237
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2239
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v2, v3, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v2, v3, v13

    .line 2245
    invoke-static {v3}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 2246
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    or-int/2addr v3, v8

    or-int/2addr v3, v2

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2248
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    new-array v3, v2, [I

    aput v1, v3, v13

    .line 2254
    invoke-static {v3}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 2255
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v7, 0x70000

    or-int v9, v3, v7

    or-int/lit8 v10, v9, 0x4

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2257
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2259
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COLOR_SPACE:I

    or-int v15, v3, v11

    or-int/lit8 v11, v15, 0x1

    invoke-virtual {v4, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2261
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2263
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    or-int v10, v3, v14

    or-int/2addr v10, v2

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2265
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    or-int/2addr v8, v3

    or-int/2addr v8, v2

    invoke-virtual {v4, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2267
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {v4, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2269
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAKER_NOTE:I

    or-int/lit8 v7, v9, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2271
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2273
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    or-int v16, v3, v5

    or-int/lit8 v14, v16, 0xd

    invoke-virtual {v4, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2275
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    or-int/lit8 v14, v16, 0x14

    invoke-virtual {v4, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2277
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    invoke-virtual {v4, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2279
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    or-int/lit8 v14, v16, 0x0

    invoke-virtual {v4, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2281
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    invoke-virtual {v4, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2283
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    invoke-virtual {v4, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2285
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    or-int/lit8 v12, v16, 0x21

    invoke-virtual {v4, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2287
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2289
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2291
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    invoke-virtual {v4, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2293
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    invoke-virtual {v4, v6, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2295
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    or-int/lit8 v12, v15, 0x0

    invoke-virtual {v4, v6, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2297
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_OECF:I

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2299
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v16, 0xa0000

    or-int v17, v3, v16

    or-int/lit8 v5, v17, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2301
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {v4, v6, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2303
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2305
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v6, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2307
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2309
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2311
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_METERING_MODE:I

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2313
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2315
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2317
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2319
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2321
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2323
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2325
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2327
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2329
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2331
    iget-object v4, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    or-int/2addr v1, v15

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2333
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    invoke-virtual {v1, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2335
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SENSING_METHOD:I

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2337
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FILE_SOURCE:I

    or-int/lit8 v5, v9, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2339
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SCENE_TYPE:I

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2341
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CFA_PATTERN:I

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2343
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2345
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2347
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2349
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    invoke-virtual {v1, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2351
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2353
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2355
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    invoke-virtual {v1, v4, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2357
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_CONTRAST:I

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2359
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SATURATION:I

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2361
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SHARPNESS:I

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2363
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2365
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2367
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v1, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2369
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PARALLEL_PROCESS_COMMENT:I

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2371
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ALGORITHM_COMMENT:I

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2373
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_BLUR_LEVEL:I

    invoke-virtual {v1, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2375
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_FOCUS_POINT:I

    invoke-virtual {v1, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2377
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_DULCAMERA_WATER_MARK:I

    const/high16 v5, 0x10000

    or-int/2addr v3, v5

    or-int/2addr v3, v13

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2379
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_TIME_WATER_MARK:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2381
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PORTRAIT_LIGHTING_PATTERN:I

    invoke-virtual {v1, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2383
    iget-object v1, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    new-array v1, v2, [I

    const/4 v3, 0x4

    aput v3, v1, v13

    .line 2389
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 2390
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    or-int/2addr v5, v1

    or-int/lit8 v6, v5, 0x4

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2392
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v6, 0x20000

    or-int v7, v1, v6

    or-int/lit8 v6, v7, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2394
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2396
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    or-int v8, v1, v16

    const/4 v9, 0x3

    or-int/2addr v8, v9

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2398
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2400
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    or-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2402
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/high16 v5, 0x50000

    or-int/2addr v5, v1

    or-int/lit8 v8, v5, 0x1

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2404
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 v9, 0x3

    or-int/2addr v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2406
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    or-int/lit8 v5, v7, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2408
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_STATUS:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2410
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2412
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DOP:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2414
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2416
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_SPEED:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2418
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2420
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_TRACK:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2422
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2424
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2426
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2428
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2430
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2432
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2434
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2436
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2438
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2440
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v5, 0x70000

    or-int/2addr v5, v1

    or-int/2addr v5, v13

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2442
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2444
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    or-int/lit8 v5, v7, 0xb

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2446
    iget-object v3, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/android/gallery3d/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v5, 0x30000

    or-int/2addr v1, v5

    or-int/lit8 v1, v1, 0xb

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-array v1, v2, [I

    const/4 v2, 0x3

    aput v2, v1, v13

    .line 2452
    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 2453
    iget-object v0, v0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v3, 0x20000

    or-int/2addr v1, v3

    or-int/2addr v1, v13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5

    .line 2483
    invoke-static {}, Lcom/android/gallery3d/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 2484
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    .line 2485
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2486
    aget v3, v0, v2

    if-ne p1, v3, :cond_0

    shr-int v3, p0, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected static isOffsetTag(S)Z
    .locals 1

    .line 1506
    sget-object v0, Lcom/android/gallery3d/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static writeDepthExif([BLcom/android/gallery3d/exif/ExifInterface;Landroid/graphics/Point;I[B[B)[B
    .locals 4

    if-nez p1, :cond_0

    .line 2542
    sget-object p1, Lcom/android/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    const-string p2, "exif should not be null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 2547
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2549
    :try_start_0
    sget-object v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeDepthExif: focusPoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    invoke-virtual {p1, p2}, Lcom/android/gallery3d/exif/ExifInterface;->addDepthMapFocusPoint(Landroid/graphics/Point;)Z

    .line 2551
    sget-object p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeDepthExif: blurLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    invoke-virtual {p1, p3}, Lcom/android/gallery3d/exif/ExifInterface;->addDepthMapBlurLevel(I)Z

    if-eqz p4, :cond_1

    .line 2554
    invoke-virtual {p1, p4}, Lcom/android/gallery3d/exif/ExifInterface;->addDulCameraWaterMark([B)Z

    :cond_1
    if-eqz p5, :cond_2

    .line 2557
    invoke-virtual {p1, p5}, Lcom/android/gallery3d/exif/ExifInterface;->addTimeWaterMark([B)Z

    .line 2559
    :cond_2
    invoke-virtual {p1, p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 2560
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 2561
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2563
    sget-object p2, Lcom/android/gallery3d/exif/ExifInterface;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "writeDepthExif:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method


# virtual methods
.method public addAlgorithmComment(Ljava/lang/String;)Z
    .locals 1

    .line 1869
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ALGORITHM_COMMENT:I

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addDepthMapBlurLevel(I)Z
    .locals 1

    .line 1905
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_BLUR_LEVEL:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addDepthMapFocusPoint(Landroid/graphics/Point;)Z
    .locals 1

    .line 1901
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_FOCUS_POINT:I

    invoke-virtual {p1}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addDulCameraWaterMark([B)Z
    .locals 1

    .line 1909
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_DULCAMERA_WATER_MARK:I

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addOrientation(I)Z
    .locals 1

    .line 1897
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addParallelProcessComment(Ljava/lang/String;)Z
    .locals 1

    .line 1893
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_PARALLEL_PROCESS_COMMENT:I

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addTimeWaterMark([B)Z
    .locals 1

    .line 1913
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_DEPTH_MAP_TIME_WATER_MARK:I

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addExifTag(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addXiaomiComment(Ljava/lang/String;)Z
    .locals 1

    .line 2066
    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_XIAOMI_COMMENT:I

    invoke-virtual {p0, v0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2070
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    const/4 p0, 0x1

    return p0
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;
    .locals 7

    .line 1521
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 1525
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v3

    .line 1526
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    .line 1528
    invoke-static {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 1531
    :cond_2
    new-instance p0, Lcom/android/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v2

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    .line 1532
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;
    .locals 1

    .line 1546
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 1547
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method protected buildUninitializedTag(I)Lcom/android/gallery3d/exif/ExifTag;
    .locals 6

    .line 1551
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1555
    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1556
    invoke-static {p0}, Lcom/android/gallery3d/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    move v5, p0

    .line 1558
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueIfd(I)I

    move-result v4

    .line 1559
    new-instance p0, Lcom/android/gallery3d/exif/ExifTag;

    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/exif/ExifTag;-><init>(SSIIZ)V

    return-object p0
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    if-eqz p1, :cond_0

    .line 987
    new-instance v0, Lcom/android/gallery3d/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/android/gallery3d/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/android/gallery3d/exif/ExifInterface;)V

    .line 988
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/exif/ExifOutputStream;->setExifData(Lcom/android/gallery3d/exif/ExifData;)V

    return-object v0

    .line 985
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .line 2160
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2161
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2162
    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifInterface;->initTagInfo()V

    .line 2164
    :cond_0
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1778
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1779
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 1780
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 1781
    :cond_0
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .line 1795
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1796
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object p0

    return-object p0

    .line 1797
    :cond_0
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 763
    :try_start_0
    new-instance v0, Lcom/android/gallery3d/exif/ExifReader;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/exif/ExifReader;-><init>(Lcom/android/gallery3d/exif/ExifInterface;)V

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/gallery3d/exif/ExifData;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/gallery3d/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    return-void

    :catch_0
    move-exception p0

    .line 765
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid exif format : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 759
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readExif([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    return-void
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifData;->clearThumbnailAndStrips()V

    .line 1842
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    const/4 p0, 0x1

    return p0
.end method

.method public setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;
    .locals 0

    .line 1606
    iget-object p0, p0, Lcom/android/gallery3d/exif/ExifInterface;->mData:Lcom/android/gallery3d/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifData;->addTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 824
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    const/4 p2, 0x0

    .line 825
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 826
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 822
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

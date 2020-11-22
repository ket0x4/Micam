.class public Lcom/sensetime/stmobile/STMobileHumanActionNative;
.super Ljava/lang/Object;
.source "STMobileHumanActionNative.java"


# static fields
.field public static final ST_MOBILE_BROW_JUMP:I = 0x20

.field public static final ST_MOBILE_EYE_BLINK:I = 0x2

.field public static final ST_MOBILE_FACE_DETECT:I = 0x1

.field public static final ST_MOBILE_HAND_CONGRATULATE:I = 0x20000

.field public static final ST_MOBILE_HAND_FINGER_HEART:I = 0x40000

.field public static final ST_MOBILE_HAND_GOOD:I = 0x800

.field public static final ST_MOBILE_HAND_HOLDUP:I = 0x8000

.field public static final ST_MOBILE_HAND_LOVE:I = 0x4000

.field public static final ST_MOBILE_HAND_PALM:I = 0x1000

.field public static final ST_MOBILE_HEAD_PITCH:I = 0x10

.field public static final ST_MOBILE_HEAD_YAW:I = 0x8

.field public static final ST_MOBILE_HUMAN_ACTION_DEFAULT_CONFIG_DETECT:I = 0x7d83f

.field public static final ST_MOBILE_HUMAN_ACTION_DEFAULT_CONFIG_IMAGE:I = 0x101c0

.field public static final ST_MOBILE_HUMAN_ACTION_DEFAULT_CONFIG_VIDEO:I = 0x1f0

.field public static final ST_MOBILE_MOUTH_AH:I = 0x4

.field public static final ST_MOBILE_SEG_BACKGROUND:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "STMobileHumanActionNative"


# instance fields
.field private nativeHumanActionHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "st_mobile"

    .line 50
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "stmobile_jni"

    .line 51
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native createInstance(Ljava/lang/String;I)I
.end method

.method public native destroyInstance()V
.end method

.method public native humanActionDetect([BIIIII)Lcom/sensetime/stmobile/STHumanAction;
.end method

.method public native reset()V
.end method

.method public native setParam(IF)I
.end method

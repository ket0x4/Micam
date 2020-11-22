.class public Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;
.super Ljava/lang/Object;
.source "ScenarioTrackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/statistic/ScenarioTrackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraEventScenario"
.end annotation


# instance fields
.field mEventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->mEventName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/camera/statistic/ScenarioTrackUtil$CameraEventScenario;->mEventName:Ljava/lang/String;

    return-object p0
.end method

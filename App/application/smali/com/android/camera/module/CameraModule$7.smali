.class Lcom/android/camera/module/CameraModule$7;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->onCreate(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    .line 2626
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$7;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailabilityStatusFetched(I)V
    .locals 1

    .line 2629
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$7;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, p1}, Lcom/android/camera/module/CameraModule;->access$7602(Lcom/android/camera/module/CameraModule;I)I

    .line 2630
    iget-object p0, p0, Lcom/android/camera/module/CameraModule$7;->this$0:Lcom/android/camera/module/CameraModule;

    .line 2631
    invoke-static {p0}, Lcom/android/camera/module/CameraModule;->access$7600(Lcom/android/camera/module/CameraModule;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2630
    :goto_0
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->setGoogleLensAvailability(Z)V

    return-void
.end method

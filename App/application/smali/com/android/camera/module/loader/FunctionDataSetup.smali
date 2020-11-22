.class public Lcom/android/camera/module/loader/FunctionDataSetup;
.super Lcom/android/camera/module/loader/Func1Base;
.source "FunctionDataSetup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/Func1Base<",
        "Lcom/android/camera/module/BaseModule;",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/Func1Base;-><init>(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;)",
            "Lcom/android/camera/module/loader/NullHolder<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    .line 49
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isDeparted()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0xe1

    .line 50
    invoke-static {v0, p0}, Lcom/android/camera/module/loader/NullHolder;->ofNullable(Ljava/lang/Object;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 54
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    if-nez v1, :cond_2

    return-object p1

    .line 58
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_3

    return-object p1

    .line 63
    :cond_3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    .line 64
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    .line 65
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    .line 68
    iget v5, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/data/data/config/DataItemConfig;->initAfterCameraOpen(ILandroid/hardware/Camera$Parameters;)V

    .line 69
    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->resetTimeOut()V

    .line 71
    iget p0, p0, Lcom/android/camera/module/loader/Func1Base;->mTargetMode:I

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->initAfterCameraOpen(ILandroid/hardware/Camera$Parameters;)V

    .line 74
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->initAfterCameraOpen()V

    .line 77
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    .line 80
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v1, p0}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->setUiStyle(I)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/android/camera/module/loader/NullHolder;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionDataSetup;->apply(Lcom/android/camera/module/loader/NullHolder;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

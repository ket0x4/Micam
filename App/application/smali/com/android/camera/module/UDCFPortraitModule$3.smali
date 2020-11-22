.class Lcom/android/camera/module/UDCFPortraitModule$3;
.super Ljava/lang/Object;
.source "UDCFPortraitModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/UDCFPortraitModule;->takeVicePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/UDCFPortraitModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/UDCFPortraitModule;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/camera/module/UDCFPortraitModule$3;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1

    .line 276
    iget-object p0, p0, Lcom/android/camera/module/UDCFPortraitModule$3;->this$0:Lcom/android/camera/module/UDCFPortraitModule;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/android/camera/module/UDCFPortraitModule;->access$602(Lcom/android/camera/module/UDCFPortraitModule;Z)Z

    .line 277
    invoke-static {}, Lcom/android/camera/module/UDCFPortraitModule;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPictureTaken data ->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

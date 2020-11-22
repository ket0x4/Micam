.class Lcom/android/camera/ui/SkinBeautyButton$1;
.super Landroid/os/Handler;
.source "SkinBeautyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SkinBeautyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SkinBeautyButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SkinBeautyButton;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/camera/ui/SkinBeautyButton$1;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 36
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/SkinBeautyButton$1;->this$0:Lcom/android/camera/ui/SkinBeautyButton;

    invoke-virtual {p0}, Lcom/android/camera/ui/SkinBeautyButton;->dismissPopup()Z

    :goto_0
    return-void
.end method

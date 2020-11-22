.class Lcom/android/camera/ui/FaceView$1;
.super Landroid/os/Handler;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FaceView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FaceView;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 149
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {p1}, Lcom/android/camera/ui/FaceView;->access$000(Lcom/android/camera/ui/FaceView;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 152
    iget-object p1, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/camera/ui/FaceView;->access$002(Lcom/android/camera/ui/FaceView;I)I

    .line 153
    iget-object p0, p0, Lcom/android/camera/ui/FaceView$1;->this$0:Lcom/android/camera/ui/FaceView;

    const/16 p1, 0x8

    const/16 v0, 0x258

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V

    :cond_1
    :goto_0
    return-void
.end method

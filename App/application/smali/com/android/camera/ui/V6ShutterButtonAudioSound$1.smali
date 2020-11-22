.class Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;
.super Landroid/os/Handler;
.source "V6ShutterButtonAudioSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6ShutterButtonAudioSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 119
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-static {p1}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$000(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    return-void

    :cond_2
    long-to-float p1, v0

    const/high16 v0, 0x43fa0000    # 500.0f

    div-float/2addr p1, v0

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-static {v0}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$200(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-static {v2}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$300(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$200(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-static {v3, p1}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$400(Lcom/android/camera/ui/V6ShutterButtonAudioSound;F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$102(Lcom/android/camera/ui/V6ShutterButtonAudioSound;I)I

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    const/high16 v1, -0x3c810000    # -255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/lit16 p1, p1, 0xff

    invoke-static {v0, p1}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$502(Lcom/android/camera/ui/V6ShutterButtonAudioSound;I)I

    .line 126
    iget-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-static {p1}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$600(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 127
    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :goto_0
    return-void
.end method

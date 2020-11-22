.class Lcom/android/camera/ui/V6ShutterButtonInternal$1;
.super Landroid/os/Handler;
.source "V6ShutterButtonInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6ShutterButtonInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6ShutterButtonInternal;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5

    .line 76
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {p1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$100(Lcom/android/camera/ui/V6ShutterButtonInternal;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 84
    iget-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {p1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$200(Lcom/android/camera/ui/V6ShutterButtonInternal;)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    .line 85
    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$300(Lcom/android/camera/ui/V6ShutterButtonInternal;)V

    return-void

    :cond_1
    long-to-float p1, v1

    .line 88
    iget-object v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$200(Lcom/android/camera/ui/V6ShutterButtonInternal;)J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr p1, v1

    .line 89
    iget-object v1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$500(Lcom/android/camera/ui/V6ShutterButtonInternal;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$600(Lcom/android/camera/ui/V6ShutterButtonInternal;)F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$500(Lcom/android/camera/ui/V6ShutterButtonInternal;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 90
    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$700(Lcom/android/camera/ui/V6ShutterButtonInternal;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float p1, v4, p1

    :goto_0
    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 89
    invoke-static {v1, v2}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$402(Lcom/android/camera/ui/V6ShutterButtonInternal;F)F

    .line 91
    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$800(Lcom/android/camera/ui/V6ShutterButtonInternal;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 78
    :cond_3
    iget-object p0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-static {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$000(Lcom/android/camera/ui/V6ShutterButtonInternal;)V

    :goto_1
    return-void
.end method

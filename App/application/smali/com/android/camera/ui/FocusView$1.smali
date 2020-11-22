.class Lcom/android/camera/ui/FocusView$1;
.super Landroid/os/Handler;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FocusView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FocusView;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusView"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 242
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    const/4 v1, 0x6

    const/4 v4, 0x5

    if-eq p1, v0, :cond_5

    if-eq p1, v4, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 244
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$100(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x208

    cmp-long p1, v4, v6

    if-ltz p1, :cond_3

    .line 246
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1, v2}, Lcom/android/camera/ui/FocusView;->access$202(Lcom/android/camera/ui/FocusView;I)I

    .line 247
    iget-object p0, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p0, v3}, Lcom/android/camera/ui/FocusView;->access$302(Lcom/android/camera/ui/FocusView;I)I

    return-void

    .line 250
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v1, v4

    const/high16 v2, 0x43fa0000    # 500.0f

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Lcom/android/camera/ui/FocusView;->access$402(Lcom/android/camera/ui/FocusView;F)F

    .line 251
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$500(Lcom/android/camera/ui/FocusView;)V

    .line 252
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const-wide/16 v1, 0x14

    .line 253
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 274
    :cond_4
    iget-object p0, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p0}, Lcom/android/camera/ui/FocusView;->access$600(Lcom/android/camera/ui/FocusView;)V

    goto :goto_1

    .line 354
    :cond_5
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$700(Lcom/android/camera/ui/FocusView;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$800(Lcom/android/camera/ui/FocusView;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 355
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$900(Lcom/android/camera/ui/FocusView;)V

    const-wide/16 v0, 0x32

    .line 356
    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 357
    :cond_6
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$1000(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    .line 358
    iget-object p0, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p0, v1}, Lcom/android/camera/ui/FocusView;->access$1100(Lcom/android/camera/ui/FocusView;I)V

    :cond_7
    :goto_1
    return-void
.end method

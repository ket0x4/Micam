.class Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;
.super Ljava/lang/Object;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraGestureDetector"
.end annotation


# instance fields
.field private mStartPoint:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/android/camera/ui/V6GestureRecognizer;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto/16 :goto_4

    .line 233
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 235
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 236
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 237
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 240
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 243
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 244
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 245
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    goto :goto_1

    .line 247
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 248
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 250
    :goto_1
    iget-object v5, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v5, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 251
    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lcom/android/camera/ui/V6GestureRecognizer;->access$312(Lcom/android/camera/ui/V6GestureRecognizer;I)I

    .line 252
    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object p0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0, v4, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p0, v1, v2}, Lcom/android/camera/module/Module;->onGestureTrack(Landroid/graphics/RectF;Z)Z

    goto/16 :goto_4

    .line 221
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraGestureDetector ACTION_MOVE mGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GESTURE_"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result v0

    const/16 v2, 0x64

    div-int/2addr v0, v2

    if-nez v0, :cond_6

    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v4, v3, v5, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$400(Lcom/android/camera/ui/V6GestureRecognizer;IIII)Landroid/graphics/Point;

    move-result-object p1

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGesture="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " orientation="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_4

    const-string v3, "h"

    goto :goto_2

    :cond_4
    const-string v3, "v"

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dx="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dy="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CameraGestureRecognizer"

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result v0

    iget v3, p1, Landroid/graphics/Point;->x:I

    mul-int v4, v3, v3

    iget v5, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr v5, v5

    add-int/2addr v4, v5

    if-gt v0, v4, :cond_6

    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le v3, p1, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0xc8

    :goto_3
    invoke-static {v0, v2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$312(Lcom/android/camera/ui/V6GestureRecognizer;I)I

    .line 230
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CameraGestureDetector ACTION_MOVE end mGesture="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 218
    :cond_7
    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Point;->set(II)V

    :cond_8
    :goto_4
    return-void
.end method

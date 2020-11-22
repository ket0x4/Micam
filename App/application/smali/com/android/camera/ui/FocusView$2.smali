.class Lcom/android/camera/ui/FocusView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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

    .line 1161
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private capture(Z)V
    .locals 2

    .line 1164
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1166
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 1167
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->removeTiltShiftMask()V

    .line 1170
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    .line 1171
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1172
    iget-object p0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/camera/ui/FocusView;->access$1202(Lcom/android/camera/ui/FocusView;Z)Z

    if-eqz p1, :cond_0

    const/16 p0, 0x5a

    .line 1174
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1183
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$700(Lcom/android/camera/ui/FocusView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1300(Lcom/android/camera/ui/FocusView;)I

    move-result v0

    const/16 v2, 0xa3

    const/16 v3, 0xa7

    const/4 v4, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_2

    const/16 v2, 0xab

    if-eq v0, v2, :cond_2

    const/16 v2, 0xac

    if-eq v0, v2, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 1196
    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 1197
    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    .line 1201
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->access$200(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->access$1000(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    :cond_3
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 1203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr p1, v5

    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    invoke-static {v0, v2, p1, v5}, Lcom/android/camera/ui/FocusView;->access$1600(Lcom/android/camera/ui/FocusView;FFF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1205
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$1300(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    if-ne p1, v3, :cond_4

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$1000(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    move v1, v4

    :cond_4
    xor-int/lit8 p1, v1, 0x1

    .line 1206
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$2;->capture(Z)V

    goto :goto_1

    .line 1208
    :cond_5
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1, v4}, Lcom/android/camera/ui/FocusView;->access$802(Lcom/android/camera/ui/FocusView;Z)Z

    .line 1209
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$1700(Lcom/android/camera/ui/FocusView;)V

    .line 1210
    iget-object p0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p0}, Lcom/android/camera/ui/FocusView;->access$1800(Lcom/android/camera/ui/FocusView;)V

    :goto_1
    return v4
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1239
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$800(Lcom/android/camera/ui/FocusView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$1900(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p2, :cond_1

    return v0

    .line 1247
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2000(Lcom/android/camera/ui/FocusView;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 1251
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2100(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->getGestureOrientation()I

    move-result p1

    const/16 p2, 0xc8

    const/16 v2, 0x5a

    if-ne p1, p2, :cond_3

    .line 1252
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2200(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    div-int/2addr p2, v2

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_4

    :cond_3
    const/16 p2, 0x64

    if-ne p1, p2, :cond_f

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 1253
    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2200(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    div-int/2addr p1, v2

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    goto/16 :goto_3

    .line 1257
    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2300(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    .line 1258
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2200(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    if-eqz p2, :cond_8

    if-eq p2, v2, :cond_7

    const/16 v2, 0xb4

    if-eq p2, v2, :cond_6

    const/16 p4, 0x10e

    if-eq p2, p4, :cond_5

    goto :goto_1

    :cond_5
    int-to-float p1, p1

    sub-float/2addr p1, p3

    goto :goto_0

    :cond_6
    int-to-float p1, p1

    add-float/2addr p1, p4

    goto :goto_0

    :cond_7
    int-to-float p1, p1

    add-float/2addr p1, p3

    goto :goto_0

    :cond_8
    int-to-float p1, p1

    sub-float/2addr p1, p4

    :goto_0
    float-to-int p1, p1

    .line 1276
    :goto_1
    sget p2, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    sget p3, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    int-to-float p4, p3

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr p4, v2

    div-float/2addr p2, p4

    int-to-float p4, p1

    div-float/2addr p4, p2

    float-to-int p2, p4

    .line 1278
    iget-object p4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$2500()I

    move-result v2

    sub-int/2addr p3, v2

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {p2, p3, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p3

    invoke-static {p4, p3}, Lcom/android/camera/ui/FocusView;->access$2402(Lcom/android/camera/ui/FocusView;I)I

    .line 1279
    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$2400(Lcom/android/camera/ui/FocusView;)I

    move-result p3

    if-ne p2, p3, :cond_9

    .line 1280
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2, p1}, Lcom/android/camera/ui/FocusView;->access$2302(Lcom/android/camera/ui/FocusView;I)I

    .line 1283
    :cond_9
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1, v1}, Lcom/android/camera/ui/FocusView;->access$2602(Lcom/android/camera/ui/FocusView;Z)Z

    .line 1285
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$2700(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    .line 1287
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2800(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    if-eq p1, p2, :cond_c

    .line 1288
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$200(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_a

    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2800(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    if-ge p1, p2, :cond_a

    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 1289
    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2800(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    iget-object p4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p4}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result p4

    if-lt p2, p4, :cond_a

    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result p2

    if-ge p1, p2, :cond_a

    .line 1290
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2900(Lcom/android/camera/ui/FocusView;)V

    .line 1291
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2800(Lcom/android/camera/ui/FocusView;)I

    move-result p4

    invoke-static {p2, p4}, Lcom/android/camera/ui/FocusView;->access$3002(Lcom/android/camera/ui/FocusView;I)I

    .line 1292
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2, p3}, Lcom/android/camera/ui/FocusView;->access$202(Lcom/android/camera/ui/FocusView;I)I

    goto :goto_2

    .line 1293
    :cond_a
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$200(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    const/4 p3, 0x4

    if-eq p2, p3, :cond_b

    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2800(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    if-le p1, p2, :cond_b

    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 1294
    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2800(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    iget-object p4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p4}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result p4

    if-ge p2, p4, :cond_b

    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result p2

    if-lt p1, p2, :cond_b

    .line 1295
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2900(Lcom/android/camera/ui/FocusView;)V

    .line 1296
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2800(Lcom/android/camera/ui/FocusView;)I

    move-result p4

    invoke-static {p2, p4}, Lcom/android/camera/ui/FocusView;->access$3002(Lcom/android/camera/ui/FocusView;I)I

    .line 1297
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2, p3}, Lcom/android/camera/ui/FocusView;->access$202(Lcom/android/camera/ui/FocusView;I)I

    .line 1301
    :cond_b
    :goto_2
    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2, p1, v0}, Lcom/android/camera/ui/FocusView;->access$3100(Lcom/android/camera/ui/FocusView;IZ)V

    .line 1304
    :cond_c
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$3300(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2400(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$3200(Lcom/android/camera/ui/FocusView;)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setEvChanged(FF)V

    .line 1305
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$3400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p2}, Lcom/android/camera/ui/FocusView;->access$2400(Lcom/android/camera/ui/FocusView;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p3}, Lcom/android/camera/ui/FocusView;->access$3200(Lcom/android/camera/ui/FocusView;)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvChanged(FF)V

    .line 1307
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$200(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$200(Lcom/android/camera/ui/FocusView;)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 1308
    :cond_d
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1, v1}, Lcom/android/camera/ui/FocusView;->access$202(Lcom/android/camera/ui/FocusView;I)I

    .line 1309
    iget-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {p1}, Lcom/android/camera/ui/FocusView;->access$500(Lcom/android/camera/ui/FocusView;)V

    .line 1310
    iget-object p0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    return v1

    :cond_f
    :goto_3
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1218
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$700(Lcom/android/camera/ui/FocusView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1300(Lcom/android/camera/ui/FocusView;)I

    move-result v0

    const/16 v2, 0xa7

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1000(Lcom/android/camera/ui/FocusView;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 1227
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$200(Lcom/android/camera/ui/FocusView;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$1000(Lcom/android/camera/ui/FocusView;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 1229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr p1, v3

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-static {v0, v1, p1, v3}, Lcom/android/camera/ui/FocusView;->access$1600(Lcom/android/camera/ui/FocusView;FFF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1231
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView$2;->capture(Z)V

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

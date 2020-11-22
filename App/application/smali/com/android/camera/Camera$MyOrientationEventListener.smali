.class Lcom/android/camera/Camera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/content/Context;)V
    .locals 0

    .line 1212
    iput-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    .line 1213
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v1, v0, Lcom/android/camera/ActivityBase;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result p1

    iput p1, v0, Lcom/android/camera/ActivityBase;->mOrientation:I

    .line 1226
    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p1

    .line 1227
    iget-object v0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v1, v0, Lcom/android/camera/ActivityBase;->mDisplayRotation:I

    if-eq p1, v1, :cond_1

    .line 1228
    iput p1, v0, Lcom/android/camera/ActivityBase;->mDisplayRotation:I

    .line 1229
    invoke-static {v0}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)V

    .line 1232
    :cond_1
    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v0, p1, Lcom/android/camera/ActivityBase;->mOrientation:I

    iget v1, p1, Lcom/android/camera/ActivityBase;->mDisplayRotation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    iput v1, p1, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    .line 1234
    iget-object v1, p1, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v1, :cond_2

    .line 1235
    iget p1, p1, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-interface {v1, v0, p1}, Lcom/android/camera/module/Module;->onOrientationChanged(II)V

    .line 1241
    :cond_2
    iget-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {p1}, Lcom/android/camera/Camera;->access$500(Lcom/android/camera/Camera;)Lcom/android/camera/fragment/BaseFragmentDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget p0, p0, Lcom/android/camera/ActivityBase;->mOrientationCompensation:I

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/AnimationComposite;->disposeRotation(I)V

    return-void
.end method

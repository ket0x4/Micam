.class public Lcom/android/camera/ui/V6SurfaceManager;
.super Ljava/lang/Object;
.source "V6SurfaceManager.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceParent:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mActivity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceParent:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surfaceChanged: width = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", height = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mSurfaceHolder="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " holder="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "V6SurfaceManager"

    invoke-static {p3, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 8

    const-string v0, "V6SurfaceManager"

    const-string v1, "surfaceCreated"

    .line 94
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 96
    iget-object v2, p0, Lcom/android/camera/ui/V6SurfaceManager;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const/4 v3, 0x0

    const v4, 0x7f090114

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "V6SurfaceManager"

    const-string v0, "surfaceDestroyed"

    .line 109
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/android/camera/ui/V6SurfaceManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

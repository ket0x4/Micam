.class Lcom/android/camera/ActivityBase$5;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ActivityBase;->hasSurface()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/android/camera/ActivityBase$5;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/android/camera/ActivityBase$5;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 821
    iget-object p0, p0, Lcom/android/camera/ActivityBase$5;->this$0:Lcom/android/camera/ActivityBase;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    return-void
.end method

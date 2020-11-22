.class Lcom/android/camera/module/MorphoPanoramaModule$3;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/MorphoPanoramaModule;->addImageAsApplication(Ljava/lang/String;Landroid/graphics/Rect;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;

.field final synthetic val$activity:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;Lcom/android/camera/Camera;)V
    .locals 0

    .line 1616
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    iput-object p2, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->val$activity:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->val$activity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1620
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$3;->val$activity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    :cond_0
    return-void
.end method

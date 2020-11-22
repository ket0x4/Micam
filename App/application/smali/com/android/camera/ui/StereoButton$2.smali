.class Lcom/android/camera/ui/StereoButton$2;
.super Ljava/lang/Object;
.source "StereoButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/StereoButton;->dismissScale(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/StereoButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/StereoButton;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/android/camera/ui/StereoButton$2;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 388
    iget-object p0, p0, Lcom/android/camera/ui/StereoButton$2;->this$0:Lcom/android/camera/ui/StereoButton;

    invoke-static {p0}, Lcom/android/camera/ui/StereoButton;->access$200(Lcom/android/camera/ui/StereoButton;)Lcom/android/camera/ui/V6ModeExitView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.class Lcom/android/camera/ui/V6ModeExitView$1;
.super Ljava/lang/Object;
.source "V6ModeExitView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6ModeExitView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6ModeExitView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6ModeExitView;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/camera/ui/V6ModeExitView$1;->this$0:Lcom/android/camera/ui/V6ModeExitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/camera/ui/V6ModeExitView$1;->this$0:Lcom/android/camera/ui/V6ModeExitView;

    invoke-static {p0}, Lcom/android/camera/ui/V6ModeExitView;->access$000(Lcom/android/camera/ui/V6ModeExitView;)Lcom/android/camera/ui/ExitButton;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/Util;->expandViewTouchDelegate(Landroid/view/View;)V

    return-void
.end method

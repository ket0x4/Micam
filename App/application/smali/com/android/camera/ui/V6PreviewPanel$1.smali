.class Lcom/android/camera/ui/V6PreviewPanel$1;
.super Ljava/lang/Object;
.source "V6PreviewPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6PreviewPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6PreviewPanel;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6PreviewPanel;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPanel$1;->this$0:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 139
    iget-object p0, p0, Lcom/android/camera/ui/V6PreviewPanel$1;->this$0:Lcom/android/camera/ui/V6PreviewPanel;

    invoke-static {p0}, Lcom/android/camera/ui/V6PreviewPanel;->access$000(Lcom/android/camera/ui/V6PreviewPanel;)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

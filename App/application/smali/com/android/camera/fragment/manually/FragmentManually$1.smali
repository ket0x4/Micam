.class Lcom/android/camera/fragment/manually/FragmentManually$1;
.super Ljava/lang/Object;
.source "FragmentManually.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/manually/FragmentManually;->onBackEvent(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/manually/FragmentManually;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/manually/FragmentManually;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/camera/fragment/manually/FragmentManually$1;->this$0:Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/camera/fragment/manually/FragmentManually$1;->this$0:Lcom/android/camera/fragment/manually/FragmentManually;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/manually/FragmentManually;->access$002(Lcom/android/camera/fragment/manually/FragmentManually;Z)Z

    .line 144
    iget-object p0, p0, Lcom/android/camera/fragment/manually/FragmentManually$1;->this$0:Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-static {p0}, Lcom/android/camera/fragment/manually/FragmentManually;->access$100(Lcom/android/camera/fragment/manually/FragmentManually;)Landroid/view/ViewGroup;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

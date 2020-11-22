.class Lcom/android/camera/fragment/FragmentBeauty$5;
.super Ljava/lang/Object;
.source "FragmentBeauty.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBeauty;->refreshBottomBeauty(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentBeauty;

.field final synthetic val$isClose:Z


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentBeauty;Z)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBeauty$5;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    iput-boolean p2, p0, Lcom/android/camera/fragment/FragmentBeauty$5;->val$isClose:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBeauty$5;->this$0:Lcom/android/camera/fragment/FragmentBeauty;

    iget-boolean p0, p0, Lcom/android/camera/fragment/FragmentBeauty$5;->val$isClose:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/android/camera/fragment/FragmentBeauty;->access$200(Lcom/android/camera/fragment/FragmentBeauty;Z)V

    return-void
.end method

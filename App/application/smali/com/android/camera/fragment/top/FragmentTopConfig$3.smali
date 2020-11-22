.class Lcom/android/camera/fragment/top/FragmentTopConfig$3;
.super Ljava/lang/Object;
.source "FragmentTopConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/top/FragmentTopConfig;->setRecordingTimeState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

.field final synthetic val$state:I

.field final synthetic val$topAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Lcom/android/camera/fragment/top/FragmentTopAlert;I)V
    .locals 0

    .line 1179
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfig;

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$topAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iput p3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$topAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iget p0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig$3;->val$state:I

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setRecordingTimeState(I)V

    return-void
.end method

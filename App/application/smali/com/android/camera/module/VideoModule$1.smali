.class Lcom/android/camera/module/VideoModule$1;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/VideoModule;->startPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$1;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 739
    iget-object p0, p0, Lcom/android/camera/module/VideoModule$1;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/camera/module/VideoModule;->access$002(Lcom/android/camera/module/VideoModule;Z)Z

    return-void
.end method

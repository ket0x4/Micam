.class Lcom/android/camera/module/BaseModule$1;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/BaseModule;->initializeMutexMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/BaseModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    .line 718
    iput-object p1, p0, Lcom/android/camera/module/BaseModule$1;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/android/camera/module/BaseModule$1;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->enterMutexMode()V

    return-void
.end method

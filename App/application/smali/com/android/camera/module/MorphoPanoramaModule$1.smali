.class Lcom/android/camera/module/MorphoPanoramaModule$1;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/MorphoPanoramaModule;->stopPanoramaShooting(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    .line 1216
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1219
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-static {p0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1600(Lcom/android/camera/module/MorphoPanoramaModule;)V

    return-void
.end method

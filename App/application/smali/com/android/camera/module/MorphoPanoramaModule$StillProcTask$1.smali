.class Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

.field final synthetic val$module:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;->this$0:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    iput-object p2, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;->val$module:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 989
    iget-object p0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;->val$module:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/module/MorphoPanoramaModule;->access$1300(Lcom/android/camera/module/MorphoPanoramaModule;Z)V

    return-void
.end method

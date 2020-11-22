.class Lcom/android/camera/Camera$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 145
    iget-object p0, p0, Lcom/android/camera/Camera$1;->this$0:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/Camera;->access$000(Lcom/android/camera/Camera;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    invoke-static {p0, v0}, Lcom/android/camera/Camera;->access$002(Lcom/android/camera/Camera;I)I

    return-void
.end method

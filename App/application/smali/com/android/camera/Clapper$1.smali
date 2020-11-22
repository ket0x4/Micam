.class Lcom/android/camera/Clapper$1;
.super Ljava/lang/Object;
.source "Clapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Clapper;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Clapper;


# direct methods
.method constructor <init>(Lcom/android/camera/Clapper;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/camera/Clapper$1;->this$0:Lcom/android/camera/Clapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/camera/Clapper$1;->this$0:Lcom/android/camera/Clapper;

    invoke-static {p0}, Lcom/android/camera/Clapper;->access$000(Lcom/android/camera/Clapper;)V

    return-void
.end method

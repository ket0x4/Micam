.class Lcom/google/lens/sdk/LensApi$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "LensApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/lens/sdk/LensApi;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/google/lens/sdk/LensApi$1;->this$0:Lcom/google/lens/sdk/LensApi;

    iput-object p2, p0, Lcom/google/lens/sdk/LensApi$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 1

    const-string p0, "LensApi"

    const-string v0, "Keyguard dismiss cancelled"

    .line 162
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDismissError()V
    .locals 1

    const-string p0, "LensApi"

    const-string v0, "Error dismissing keyguard"

    .line 157
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDismissSucceeded()V
    .locals 2

    const-string v0, "LensApi"

    const-string v1, "Keyguard successfully dismissed"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi$1;->this$0:Lcom/google/lens/sdk/LensApi;

    iget-object p0, p0, Lcom/google/lens/sdk/LensApi$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/google/lens/sdk/LensApi;->access$100(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;)V

    return-void
.end method

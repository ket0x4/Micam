.class Landroid/support/v4/app/FragmentActivity$HostCallbacks;
.super Landroid/support/v4/app/FragmentHostCallback;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentHostCallback<",
        "Landroid/support/v4/app/FragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 983
    iput-object p1, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    .line 984
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1057
    iget-object p0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 989
    iget-object p0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 0

    .line 1063
    iget-object p0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 999
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object p0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public onGetWindowAnimations()I
    .locals 0

    .line 1051
    iget-object p0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1052
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    return p0
.end method

.method public onHasView()Z
    .locals 0

    .line 1068
    iget-object p0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1069
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onHasWindowAnimations()Z
    .locals 0

    .line 1046
    iget-object p0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
    .locals 0

    .line 994
    iget-object p0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 0

    .line 1009
    iget-object p0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

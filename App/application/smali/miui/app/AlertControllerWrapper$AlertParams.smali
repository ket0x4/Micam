.class public Lmiui/app/AlertControllerWrapper$AlertParams;
.super Lcom/android/internal/app/AlertController$AlertParams;
.source "AlertControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/AlertControllerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation


# instance fields
.field public mCheckBoxMessage:Ljava/lang/CharSequence;

.field public mEditMode:Z

.field public mIsChecked:Z

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnShowListener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private createListView(Lcom/android/internal/app/AlertController;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/internal/app/AlertController;)V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 171
    :cond_2
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 176
    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, -0x1

    .line 183
    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    const/4 v2, -0x2

    .line 189
    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    const/4 v2, -0x3

    .line 195
    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 201
    :cond_8
    invoke-direct {p0, p1}, Lmiui/app/AlertControllerWrapper$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V

    .line 204
    :cond_9
    iget-object p0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz p0, :cond_a

    .line 205
    invoke-virtual {p1, p0}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    :cond_a
    return-void
.end method

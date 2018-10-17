class WelcomeController < ApplicationController
    before_action :authenticate_user!

    def index
        @ebooks = Ebook.all
        @ebook_count = Ebook.count
    end
end
